param([switch]$Check)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$skill = Join-Path $root 'skills/prompt-sathi'
$zip = Join-Path $root 'prompt-sathi.zip'
$source = Get-Content -LiteralPath (Join-Path $skill 'SKILL.md') -Raw -Encoding utf8
if ($source -notmatch '\A---\r?\nname: prompt-sathi\r?\ndescription: [^\r\n]{1,1024}\r?\n---\r?\n') {
    throw 'SKILL.md must have the expected name and a valid description.'
}

$expected = @{}
Get-ChildItem -LiteralPath $skill -Recurse -File | ForEach-Object {
    $relative = $_.FullName.Substring($skill.Length + 1).Replace('\', '/')
    $expected["prompt-sathi/$relative"] = (Get-FileHash -LiteralPath $_.FullName).Hash
}

if (!$Check) {
    Compress-Archive -LiteralPath $skill -DestinationPath $zip -Force
}

Add-Type -AssemblyName System.IO.Compression.FileSystem
$archive = [IO.Compression.ZipFile]::OpenRead($zip)
try {
    foreach ($entry in $archive.Entries) {
        $path = $entry.FullName.Replace('\', '/')
        if ($path.EndsWith('/')) { continue }
        if (!$expected.ContainsKey($path)) { throw "Unexpected archive entry: $path" }
        $stream = $entry.Open()
        try {
            $hash = (Get-FileHash -InputStream $stream).Hash
            if ($hash -ne $expected[$path]) { throw "Archive entry differs from source: $path" }
        } finally {
            $stream.Dispose()
        }
        $expected.Remove($path)
    }
    if ($expected.Count) { throw "Missing archive entries: $($expected.Keys -join ', ')" }
} finally {
    $archive.Dispose()
}
Write-Output 'Prompt Sathi skill metadata and upload ZIP verified.'

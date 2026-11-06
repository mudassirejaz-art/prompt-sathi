# Contributing

For a prompt-quality issue, include the AI app, the rough request, what the skill returned, and what detail was lost or invented. Replace private details with sample data.

Keep the core workflow in [SKILL.md](skills/prompt-sathi/SKILL.md). Add optional examples to its references. Add a manual evaluation case only when it covers a distinct behavior.

From the repository root in PowerShell, rebuild and check the upload package:

```powershell
./scripts/package-skill.ps1
./scripts/package-skill.ps1 -Check
```

Include the rebuilt ZIP with skill edits. Run the relevant [manual checks](docs/examples.md) in a fresh chat and report which app you tried. Package checks do not evaluate AI responses.

## Release

1. Rebuild and check the ZIP from the release commit.
2. Update the changelog and record the test coverage in [VALIDATION.md](VALIDATION.md).
3. Draft a tagged GitHub release and attach `prompt-sathi.zip` as the install asset. The repository source ZIP is a separate download.

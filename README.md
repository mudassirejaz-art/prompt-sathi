# Prompt Sathi — a guided work skill for ChatGPT and Claude

English · [Roman Urdu](README.roman-urdu.md)

**Apna kaam jaisay bolte ho, waisay likho.** Prompt Sathi asks for missing details, proposes the next step, and waits for approval before doing the work. It adapts to feedback in English, Urdu, or Roman Urdu. Ask for “prompt only” to get a copyable prompt.

## Try it

> Use Prompt Sathi. Meri YouTube video ka SEO aur thumbnail improve karna hai.

Prompt Sathi asks for your channel or video topic and competitor links in one box. It then asks permission to review the public examples before suggesting titles, thumbnails, and a description opening. See the [YouTube workflow](skills/prompt-sathi/references/youtube-seo.md).

Ask “Which thumbnail idea fits my audience?” for a recommendation and the reason behind it. Prompt Sathi can advise from the context you provided. If it needs fresh evidence, it proposes a search first. It uses only tools available in your AI app and asks before accessing a source or acting on a recommendation.

## Use it

Attaching the ZIP in the regular chat box adds a file to the conversation. It does not activate Prompt Sathi. If you already attached it, send this message in the same chat:

> Open the attached prompt-sathi.zip and read prompt-sathi/SKILL.md. Use it as the workflow for this chat. Mujhe meri YouTube video ke SEO aur thumbnail mein help chahiye.

If ChatGPT cannot read the ZIP, paste the skill text using the first option below.

- **Without installing:** Open [SKILL.md](skills/prompt-sathi/SKILL.md), paste its instructions into a new ChatGPT or Claude chat, then say “Use Prompt Sathi. Here is what I want to do: …”
- **ChatGPT:** If your workspace offers Skills, go to **Plugins → Skills → Create → Upload from your computer** and follow the upload instructions. If Skills is unavailable, use the paste option. See [OpenAI's Skills guide](https://help.openai.com/en/articles/20001066-skills-in-chatgpt).
- **Claude:** Download [prompt-sathi.zip](prompt-sathi.zip), then go to **Customize → Skills → + → Create skill → Upload a skill**. See [Anthropic's Skills guide](https://support.claude.com/en/articles/12512180-use-skills-in-claude).

Once installed, say “Use Prompt Sathi” and describe your task. It adapts within the chat and can give you a work brief to reuse later.

For ongoing work, create one named project per work area. Save the skill as project instructions and keep the latest work brief in project sources or knowledge. Start new chats inside that project with “Continue from the latest Prompt Sathi work brief.” The same brief can be pasted into another chat when shared context is unavailable. [ChatGPT and Claude setup](skills/prompt-sathi/references/project-continuity.md)

See the [examples and manual checks](docs/examples.md), [validation protocol](VALIDATION.md), and [market scan](docs/market-scan.md).

## Repository layout

| Directory | Role |
| --- | --- |
| [agents/](agents/) | Coordinator and specialist routing |
| [skills/](skills/) | Guided work and standalone specialist skills |
| [commands/](commands/) | User-facing chat entry points |
| [rules/](rules/) | Execution and approval boundaries |
| [tests/](tests/) | Behavior test entry point |

The upload ZIP packages the main Prompt Sathi skill with its bundled workflows. The standalone skills can also be used independently by loading their respective `SKILL.md`.

See the [architecture map](docs/architecture.md) for how the coordinator, specialist workflow, project brief, and validation fit together. The [quick actions](skills/prompt-sathi/references/quick-actions.md) work as ordinary chat messages once Prompt Sathi is active.

| Path | Purpose |
| --- | --- |
| [skills/prompt-sathi/SKILL.md](skills/prompt-sathi/SKILL.md) | Agent Skill: Markdown instructions with YAML metadata |
| [skills/prompt-sathi/references/](skills/prompt-sathi/references/) | Optional examples for beginner and mixed-language requests |
| [docs/](docs/) | Manual evaluations, competitive research and repository comparisons |
| [scripts/package-skill.ps1](scripts/package-skill.ps1) | Build and check the upload ZIP |
| [.github/workflows/validate.yml](.github/workflows/validate.yml) | Check that the committed ZIP matches the source |

The skill itself requires no scripts, packages, or API keys. PowerShell is only used by maintainers to build and check the ZIP. See [CONTRIBUTING.md](CONTRIBUTING.md) for the commands and [CHANGELOG.md](CHANGELOG.md) for changes.

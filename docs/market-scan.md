# Market scan — 6 November 2026

This was a targeted web and GitHub scan for reusable prompt-writing skills. It establishes that the category already exists. It does not measure demand or prove that any language or audience is unserved.

| Project | Overlap with Prompt Sathi |
| --- | --- |
| [Samuel-Shek/prompt-optimizer](https://github.com/Samuel-Shek/prompt-optimizer) | Direct overlap: turns rough requests into copy-ready prompts for ChatGPT, Claude, Codex and Claude Code. Offers English and Chinese editions. |
| [nidhinjs/prompt-master](https://github.com/nidhinjs/prompt-master) | Direct overlap: a Claude skill for writing prompts for different AI tools. |

## Repository structure we followed

| Reference | What it uses | What Prompt Sathi adopts |
| --- | --- | --- |
| [Anthropic Agent Skills](https://github.com/anthropics/skills) | Separate skills under `skills/`, each with Markdown instructions and YAML metadata; some include scripts and resources. | `skills/prompt-sathi/SKILL.md` and an optional `references/` folder. |
| [Prompt Optimizer](https://github.com/Samuel-Shek/prompt-optimizer) | Localized READMEs, skill references, validation documentation and a changelog; also includes Claude plugin and agent configuration. | Localized onboarding, examples, documented evaluation and a changelog. |
| [Prompt Master](https://github.com/nidhinjs/prompt-master) | One Markdown skill entrypoint, reference material and an install guide. | A short entrypoint and setup steps for browser users. |

The [Agent Skills specification](https://agentskills.io/specification) defines the portable Markdown and YAML format. Prompt Sathi adds its own beginner coaching rules and examples; it does not depend on either competitor's implementation.

Our hypothesis: a first-time user who describes everyday work in mixed English and Roman Urdu may benefit from a single short prompt, one concrete coaching sentence, and no setup requirement for a first try. Keep v1 narrow enough to test that hypothesis before adding more skills.

For the next round, give five beginners one task they already do. Ask them to try the paste setup without help, then note whether they can use the first prompt, whether key requirements survive, and whether they can explain what changed. Collect feedback before claiming better results or expanding the repo.

Suggested GitHub description: **Turn rough English, Urdu, or Roman Urdu work requests into short prompts for ChatGPT and Claude. A beginner-friendly Agent Skill.**

Suggested topics: `agent-skills`, `prompt-engineering`, `chatgpt`, `claude`, `roman-urdu`.

## Expanded search

| Finding | Implication for Prompt Sathi |
| --- | --- |
| [Prompt Improver](https://github.com/owenob1/prompt-improver) packages a Bash-based generator with structural checks, a Claude Code marketplace, and optional execution. | A strong reference for coding-agent distribution. Our browser-first audience can start by pasting the skill, so a shell generator would add setup to the first try. |
| [Claude Code Prompt Coach](https://github.com/hancengiz/claude-code-prompt-coach-skill) analyzes coding session history and scores prompt habits. | Coaching already exists. Test whether a single, immediate explanation helps someone write their next everyday work prompt. |
| [OpenAI Prompt Optimizer](https://developers.openai.com/api/docs/guides/prompt-optimizer) describes dataset-based evaluation and advises checking individual inputs for regressions. | Compare real task outputs before claiming improvements. Track dropped details as well as better wording. |
| [Roman Urdu LLM Benchmark](https://github.com/r2ja/roman-urdu-llm-benchmark) evaluates everyday Pakistani Roman Urdu understanding and generation. | Add informal spellings and English code-switching to our cases. This benchmark measures language behavior, so it cannot establish demand for a prompt coach. |
| [Vercel Skills CLI](https://github.com/vercel-labs/skills/blob/main/docs/commands.md) can list and install individual skills from a repository. | After publication, verify that the CLI discovers the named skill before documenting the public install command. |

## Closest alternatives found in the deeper search

Searches covered English, Urdu script, and Roman Urdu queries for prompt generators, prompt libraries, and coaching skills.

| Alternative | What overlaps | What to compare |
| --- | --- | --- |
| [Brainbaby Urdu AI Prompt Generator](https://brainbaby.ai/ur/ai-prompt-generator) | Browser generator explicitly accepts Urdu or Roman Urdu goals. This is direct competition for language and quick setup. | Compare how each handles informal spelling, an English output request, and missing facts. |
| [FixMyPrompt](https://github.com/harshivpgajjar/fixmyprompt) | Returns a refined prompt and one prompting lesson in Claude Code. | The rewrite-plus-lesson format already exists. Compare how understandable our lesson is for first-time users doing office or client work. |
| [Awesome GitHub Copilot Prompt Optimizer](https://awesome-copilot.github.com/skill/prompt-optimizer/) | An installable skill that turns a rough task into one copyable chat prompt. | Use it as a packaged skill comparison for preserving intent and keeping the prompt short. |
| [Dareecha Urdu prompts](https://dareecha.pk/prompts?category=urdu) | Copyable Urdu prompt templates for ChatGPT, Claude, and Gemini. | A ready-made template is a plausible substitute when the beginner already knows the task category. |
| [NAAP](https://rahmanbuilds.com/resources/naap) | A copyable context template with easy English, Roman Urdu, and mixed-language preferences. | Check whether beginners can express a one-off task with less setup using the short Prompt Sathi workflow. |

Roman Urdu input, browser access, and one-line coaching each have precedent. The remaining hypothesis is that a portable skill combining these features can help beginners preserve the meaning of everyday work requests and reuse the lesson on their next task. Compare against Brainbaby and a plain request to ChatGPT or Claude before making a quality claim. The comparisons above come from the projects' published descriptions. Live behavior and user demand remain unmeasured.

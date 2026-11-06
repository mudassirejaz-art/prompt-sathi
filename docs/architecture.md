# Prompt Sathi architecture

The [ECC repository](https://github.com/affaan-m/ECC) shown in the reference reel organizes reusable capabilities around skills, agent workflows, and continuity. Prompt Sathi applies that structure to guided work in ChatGPT and Claude.

| Layer | Where it lives | Responsibility |
| --- | --- | --- |
| Coordinator | [SKILL.md](../skills/prompt-sathi/SKILL.md) | Route a request to guided work, advice, or prompt writing. Hold the approval boundary. |
| Specialist workflow | [YouTube SEO](../skills/prompt-sathi/references/youtube-seo.md) | Collect video and competitor inputs, then turn approved research into packaging ideas. |
| Continuity | [Project setup and work brief](../skills/prompt-sathi/references/project-continuity.md) | Carry decisions, inputs, and the next proposed action between chats. |
| Entry points | [Quick actions](../skills/prompt-sathi/references/quick-actions.md) | Give users short phrases to start, resume, or hand off work. |
| Validation | [Test cases and results](../VALIDATION.md) | Track live behavior separately from package integrity. |

The coordinator loads a workflow reference when the request needs it. Add a specialist reference when a work area has distinct inputs and outputs. Keep account access and tool execution subject to the host and the user's approval.

# Validation

The package check verifies skill metadata and confirms that the ZIP contains the same files as the skill folder. Run `./scripts/package-skill.ps1 -Check` from the repository root.

## Compare results in ChatGPT and Claude

1. Pick a case from [the manual evaluation cases](docs/examples.md). Use fictional input and fill any placeholders with the same facts in both trials.
2. In a fresh chat, give the target model the raw work request. In a second fresh chat with the same model and settings, give it the prompt produced by Prompt Sathi. For cases that test clarification or activation, inspect the skill response directly.
3. Hide which output came from which trial. Ask a reviewer to choose the more usable result, or record a tie. Treat a lost requirement or invented fact as a failure and record what changed.
4. Ask a beginner to try the Roman Urdu quick start without help. Record whether they can use the first prompt and explain the coaching note in their own words.

| Date | App and model | Case | Requirements preserved | Invented facts | Winner or tie | Beginner observation |
| --- | --- | --- | --- | --- | --- | --- |

Live results are pending. This protocol measures output usefulness and beginner onboarding separately. The package check measures neither.

## First test run

| Check | Result |
| --- | --- |
| Skill layout against Anthropic's public catalog | Matches the `skills/<name>/SKILL.md` convention, with related examples in `references/`. |
| Local package integrity | Passed. The ZIP entries match the skill source files. |
| Local Codex behavior smoke test | Blocked at CLI startup. The process reported that it could not find its home directory. No model response was generated. |
| Live ChatGPT, attached ZIP with explicit instructions | User-reported intake pass. ChatGPT returned one copyable input box, offered a competitor discovery option, and deferred research. Research approval, browsing, and project resume remain untested. |
| Live Claude | Pending. |
| ChatGPT regular chat, ZIP attached without a message | User observed a generic file review offer. The attachment did not activate the skill. Retest with an explicit instruction or pasted skill text. |

The following walkthrough checks whether the written rules cover each transition. It does not score model responses.

| Step | Example input | Rule checked |
| --- | --- | --- |
| Intake | “Meri YouTube video ka SEO improve karo.” | Ask for the topic or channel and competitor links together. |
| Approval boundary | User supplies competitor links without a yes. | Propose a public review and wait. |
| Narrowed approval | “Haan, bas pehla channel dekho.” | Review only the first channel and note the narrower evidence. |
| Advice | “In dono ideas mein kaunsa better hai?” | Recommend from available context and explain why. |
| New project chat | “Latest brief se continue karo,” with a current brief available. | Reuse confirmed inputs, state the next step, and request approval for new work. |
| Missing project context | Same resume request, with no accessible brief. | Ask for the latest brief before asking the intake questions again. |

## Guided work scenarios

| Scenario | Expected behavior |
| --- | --- |
| Invoke without a task | Ask what work the user wants help with. |
| Request YouTube SEO | Ask for own channel or topic and competitor links in one box. |
| Provide the links without approving research | Propose the review and wait. No browsing or invented findings. |
| Approve public review only | Compare the approved sources and deliver original packaging ideas. Ask again before publishing or changing the channel. |
| Decline browsing or report inaccessible sources | Offer to work from supplied examples and request permission for that step. |
| Correct the audience after the draft | Carry the correction forward and ask before taking a new substantive step outside the approved scope. |
| Start a new project chat with a current brief | Resume from the recorded next step without asking for the channel, audience, or links again. Ask for approval before execution. |
| Start a new chat with no accessible brief | Ask for the latest brief before repeating intake. |
| Resume a brief that records prior approval | Treat the old approval as history. Ask before the new action. |
| Ask which of two supplied thumbnail ideas fits the brief | Recommend one with a reason tied to the audience. Give advice without opening tools or changing anything. |
| Ask for suggestions based on today's competitor videos | Propose public research and wait for approval. |
| Request a connected app that is unavailable | State the limitation and offer a path using supplied material. Wait for approval before switching to a different source. |

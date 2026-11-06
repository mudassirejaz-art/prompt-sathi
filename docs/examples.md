# Examples and manual checks

Try each input in a fresh chat after adding the skill. Wording may vary; check the behavior in the last column.

| Case | Input | What to check |
| --- | --- | --- |
| Beginner work request | `Client ko English mein email likhwani hai. Delivery do din late hai. Short aur polite.` | The draft prompt preserves the two-day delay, English output and tone. The explanation is in Roman Urdu. It does not invent a date or reason. |
| Long prompt cleanup | `Make this shorter: Write an update for my manager. Three bullets max. Keep it short. Use only my notes. No made-up dates. Put blockers first. Again, keep it very brief. Notes: [paste notes].` | Keeps the audience, three-bullet cap, source limits and blockers first; removes repeated brevity instructions. |
| Missing source material | `Make a prompt to turn my meeting notes into action items with owners and due dates.` | Gives a useful draft with a notes placeholder. Tells the target what to do when an owner or date was not recorded. |
| Missing deliverable | `Make me a strong prompt for my business.` | Asks one question about the intended outcome. |
| Explicit output only | `Only give me a prompt to turn my notes into a 100-word LinkedIn post.` | Returns one copyable prompt and no coaching note. |
| Informal spelling and mixed language | `client ko eng ma update ka prompt chye. payment abhi confirm ni hui, bs polite rkhna.` | Understands the shorthand and negation, asks for English output, preserves the unconfirmed status, and gives the coaching note in Roman Urdu. |
| Relative date and script choice | `Team ko Roman Urdu mein msg likhwanay ka prompt do. Demo aglay jumay planned hai, confirm nahi.` | Keeps Roman Urdu output, the relative timing, and the distinction between planned and confirmed. |
| Ordinary task | `Write a polite email to my client about a two-day delivery delay.` | Does the task directly if this is a normal chat with the skill available and no explicit skill invocation. |

For a comparison, run the same inputs with and without the skill in fresh chats. Compare requirements preserved, facts invented, questions asked and whether a beginner can use the resulting prompt immediately. These are proposed live checks, not benchmark results.

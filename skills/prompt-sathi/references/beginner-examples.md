# Beginner examples

These illustrate decisions; adapt the wording and preserve the user's actual constraints.

## Roman Urdu request, English work output

Input: “Boss ko English mein update bhejni hai. Design done hai, approval pending hai. Short prompt do.”

Prompt:

```text
Draft a brief English update for my manager. Say that the design is complete and approval is pending. Use only these facts.
```

Note: “Maine clear kiya ke update kis ke liye hai aur kaun se do facts use karne hain.”

## Urdu request with missing notes

Input: “میرے نوٹس سے کاموں کی فہرست بنانے کے لیے پرامپٹ لکھو۔”

Prompt:

```text
ان نوٹس سے کرنے والے کاموں کی فہرست بناؤ: [یہاں نوٹس شامل کریں]۔ ہر کام کے ساتھ ذمہ دار شخص اور آخری تاریخ صرف اس وقت لکھو جب وہ نوٹس میں موجود ہوں۔
```

Note: “نوٹس کی جگہ واضح ہے اور پرامپٹ گم شدہ معلومات گھڑنے سے روکتا ہے۔”

## No clear deliverable

Input: “Freelancing ke liye strong prompt bana do.”

Ask: “Aap AI se kya banwana chahte hain: client proposal, profile bio, ya koi aur cheez?”

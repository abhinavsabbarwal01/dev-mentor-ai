# Dashboard Template

Use this format when rendering user dashboard:

```
╔══════════════════════════════════════════════╗
║  👤 {Name} — {Role} ({Experience} exp)       ║
║  🎯 Goal: {Target} | Pace: {Pace}            ║
╚══════════════════════════════════════════════╝

📊 PROGRESS

DSA            [{bar}] {pct}% ({done}/{total})
Java Core      [{bar}] {pct}% ({done}/{total})
System Design  [{bar}] {pct}% ({done}/{total})
AI/LLM         [{bar}] {pct}% ({done}/{total})

🎯 CURRENT TOPIC
{What user is working on right now}

⏭️  NEXT UP
{Next topic/problem queued}

✅ READINESS SCORE: {score}/10

💪 STRONG AREAS
- {Topic 1}
- {Topic 2}

⚠️  WEAK AREAS (prioritized)
- {Topic 1} — focus here
- {Topic 2}

🔥 HOT TOPICS TO WATCH
- {Hot topic 1} — {trend reason}
- {Hot topic 2}

💡 TIP OF THE DAY
{Personalized tip based on user's recent activity}
```

**Rules:**
- Progress bar: █ filled, ░ empty, 20 chars wide
- NO day/week/streak tracking (topic-based, not time-based)
- User controls pace — anyone can finish in one shot or take months
- Readiness: based on topic completion + confidence, not time spent

# Dashboard Template

Use this format when rendering user dashboard:

```
╔══════════════════════════════════════════════╗
║  👤 {Name} — {Role} ({Experience} exp)       ║
║  🎯 Goal: {Target} | Timeline: {Timeline}    ║
╚══════════════════════════════════════════════╝

📊 PROGRESS

DSA            [{bar}] {pct}% ({done}/{total})
Java Core      [{bar}] {pct}% ({done}/{total})
System Design  [{bar}] {pct}% ({done}/{total})
AI/LLM         [{bar}] {pct}% ({done}/{total})

📅 TODAY'S PLAN

1. {Problem/Topic 1} — {Time estimate}
2. {Problem/Topic 2} — {Time estimate}
3. {Optional: System design reading}

🔥 STREAK: {N} days
📈 CONSISTENCY: {score}/10
✅ READINESS: {score}/10

💪 STRONG AREAS
- {Topic 1}
- {Topic 2}

⚠️  WEAK AREAS (prioritized)
- {Topic 1} — focus this week
- {Topic 2}

🔥 HOT TOPICS TO WATCH
- {Hot topic 1} — {trend reason}
- {Hot topic 2}

💡 TIP OF THE DAY
{Personalized tip based on user's recent activity}
```

Rules:
- Progress bar: use █ for filled, ░ for empty, 20 chars wide
- Streak: calendar days with at least 1 problem/topic completed
- Consistency: last 30 days average
- Readiness: composite score (skills + confidence + consistency)

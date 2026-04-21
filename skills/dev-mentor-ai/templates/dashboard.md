# Dashboard Template

Format:

```
╔══════════════════════════════════════════════╗
║  👤 {Name} — {Role} ({Experience} exp)       ║
║  🎯 Goal: {Target} | Pace: {Pace}            ║
╚══════════════════════════════════════════════╝

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📍 CURRENT SECTION → {TRACK}
🎯 Current Topic   → {Topic/Problem name}
⏭️  Up Next         → {Next topic/problem}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 OVERALL PROGRESS

DSA            [{bar}] {pct}% ({done}/{total})
Java Core      [{bar}] {pct}% ({done}/{total})
System Design  [{bar}] {pct}% ({done}/{total})
AI/LLM         [{bar}] {pct}% ({done}/{total})

✅ READINESS SCORE: {score}/10

💪 STRONG AREAS
- {Topic 1}
- {Topic 2}

⚠️  WEAK AREAS (priority)
- {Topic 1} — focus here
- {Topic 2}

🔥 HOT TOPICS TO WATCH
- {Hot topic 1} — {trend reason}
- {Hot topic 2}

💡 TIP OF THE DAY
{Personalized tip based on user's recent activity}
```

**Rules:**
- CURRENT SECTION row MUST show active track prominently at top
- Current Topic = exact problem/topic user working on now
- Up Next = what's queued after current completes
- Progress bar: █ filled, ░ empty, 20 chars wide
- NO day/week/streak tracking (topic-based only)
- User controls pace — anyone can finish in one shot or take months

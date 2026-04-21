# Onboarding Flow — Sequential

**Rules:**
1. One question per message. Wait for user answer. Then next.
2. Use `AskUserQuestion` tool for multi-choice questions.
3. Use free-text for open answers.
4. **NO time-based questions** (no "hours/week", no "schedule"). Topic-based only.

## Question Sequence

### Q1: Name (free-text)
"What's your name?"

### Q2: Role (AskUserQuestion)
Options: Fresher / SDE1 / SDE2 / SDE3

### Q3: Experience (free-text)
"How many years/months of experience?"

### Q4: Target Role (AskUserQuestion)
Options: SDE1 / SDE2 / SDE3 / FAANG / Custom (user types)

### Q5: Pace Preference (AskUserQuestion) — NOT timeline
Options:
- Self-paced (no pressure, learn when convenient)
- Steady (consistent daily progress)
- Intensive (push hard, complete fast)

### Q6: Primary Language (free-text)
"Primary language + self-rating 1-10?"

### Q7: DSA Level (AskUserQuestion)
Options:
- Beginner (< 50 problems)
- Intermediate (50-200, know patterns)
- Advanced (200+, medium-hard comfort)

### Q8: System Design Level (AskUserQuestion)
Options: None / Basic / Intermediate / Advanced

### Q9: AI/LLM Level (AskUserQuestion)
Options: None / Used APIs / Built RAG / Built Agents

### Q10: Platform (AskUserQuestion)
Options: LeetCode / GeeksforGeeks / Codeforces / Mixed

### Q11: Weak Areas (free-text)
"What topics do you struggle with?"

### Q12: Strong Areas (free-text)
"What topics are you confident in?"

### Q13: Start Focus (AskUserQuestion, multiSelect: true)
Options: DSA / System Design / Java Core / AI/LLM

---

## After All Answers

1. Summarize profile as dashboard
2. Save to `user-profile.json`
3. Confirm: "Profile saved. Ready to start?"
4. Show first topic/problem based on Start Focus + level

**IMPORTANT:** Never create day/week schedules. User completes at own pace.

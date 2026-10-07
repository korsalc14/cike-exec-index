# Agent registry (updated 2026-10-07 — CK lane IDs; GBRAIN is memory, not a lane)

| Agent | Lane | Owns | Health |
|-------|------|------|--------|
| Muse Spark (this session) | Lead / verify | plan, scope, design, independent verification, push calls | ok |
| K2 | Personal companion | knows everything CK knows; mobile-first; holds own Whop API key (never shared); drafts only, per-action publish approval | active |
| CX-MAC (Codex, Mac) | Build | feature units on branches, tests, dry proof; gbrain MCP grant codex-mac; worklog ~/.codex/AGENTS.md | ok — bundled binary 0.160.1 (codex-cli/bin/codex); dispatch via codex-gbrain wrapper |
| CX-TERM (Codex, Termux phone) | Build (field) | same lane; git identity shows as `root@localhost.localdomain` — attribute by branch + session log, not author field; brain access UNVERIFIED | active (CK-confirmed 2026-10-05) |
| CX-MUSE (Muse app, phone) | Field / chat | k2-mobile gbrain grant (read+write); design notes, field results | active — facts #19-20, #28-30 |
| Jev | Speed (proposed) | fast parallel units, no architecture changes | not onboarded (needs CK API key decision) |
| Laya | Logic (proposed) | review, red-team, test gaps | local lib installed (~/laya-env); lane onboarding open |

Onboarding contract for any lane: capability probe + sandbox/auth
self-check (PING-OK pattern) before first real dispatch.

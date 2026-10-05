# Agent registry (updated 2026-10-05)

| Agent | Lane | Owns | Health |
|-------|------|------|--------|
| Muse Spark (this session) | Lead / verify | plan, scope, design, independent verification, push calls | ok |
| K2 | Personal companion | knows everything CK knows; mobile-first; holds own Whop API key (never shared); drafts only, per-action publish approval | active |
| Codex (local CLI) | Build | feature units on branches, tests, dry proof | ok — bundled binary 0.154.0; npx 0.2.3 shim dead; re-login needed if 401s return |
| Jev | Speed (proposed) | fast parallel units, no architecture changes | not onboarded |
| Laya | Logic (proposed) | review, red-team, test gaps | not onboarded |

Onboarding contract for any lane: capability probe + sandbox/auth
self-check (PING-OK pattern) before first real dispatch.

# Cross-repo decision index (one line + pointer)

- Repo roles (CK 2026-10-05, confirmed with one correction): cike-platform
  = architect (specs, decisions, website, billing) + canonical home,
  but NOT today's active TurnSQ/Regent code — that lives in dev-teams-env
  until a migration is approved; digital-products = sales dev (specs,
  product content, marketing). Migration direction open — do NOT assume
  code flows either way without a decision.

- Jev = hosted API ONLY (TypeSafe, api.typesafe.ai, no weights anywhere):
  cannot be installed; needs CK signup + payment (no free credits for new
  signups). Awaiting CK call before any key exists on this machine.
- Laya = open weights, installed: venv ~/laya-env (py3.12 via brew, laya
  0.3.28), weights convaiinnovations/laya from Hugging Face, proven live
  (choice+noul with probabilities). Multilingual checkpoint reserved for
  Khmer work. Runtime env only — never vendored into product repos.

- gbrain runtime: installed from source ONLY as `github:garrytan/gbrain`
  v0.60.72.0 (never npm — the npm package is an unrelated trap per
  upstream docs). Bun 1.4.2. Keyless keyword-only brain, verified
  remember/recall/forget round-trip. No identity replacement, no
  auto-capture, no cron, no enrichment — pending explicit approval.
- Jev/Laya are NOT repos and NOT in gbrain (jev-1.13.0 = Typesafe model
  ID): onboard as agents via lanes, not installs.

- TurnSQ product name → dev-teams-env `docs/decisions/nailapp-name-turnsq.md`.
- Phase A IP split approved+done → `docs/decisions/nailapp-phase-a-greenlight.md`.
- Web now, native app later; no wrappers → same file + `PORTABILITY.md`.
- Regent hybrid scope = Core discipline, not device transplant → dev-teams-env `docs/decisions/regent-hybrid-scope.md`.
- Owner PIN auth (NailApp pattern) → `docs/decisions/regent-owner-pin-auth.md`.
- Monetization corrected (subscription honesty, one price, handover list, lawyer draft) → dev-teams-env `docs/decisions/regent-monetization.md` + `regent-export-selfserve.md`.
- Member capture + review loop + mobile composer → `regent-member-capture.md`, `regent-member-auth.md`, `regent-mobile-composer.md`, `regent-review-loop.md`.
- Whop billing/entitlement design = DRAFT awaiting leader validation → cike-platform `docs/decisions/whop-cike-platform-integration-handoff.md`.
- Single-file NailApp retired from hosting → dev-teams-env `HANDOFF.md` 2026-09-30.
- Fast lane (phone-only 15-min): K2 holds own Whop key, drafts-only + per-action publish approval; Mac CLI creds separate → cike-exec-index/fast-lane.md`.
- K2 mobile protocol (brand-new topics): 5-move midwife pattern → cike-exec-index/k2-mobile-protocol.md`.
- Product-lines integration plan (draft): single-home map, status-by-evidence, 90/10 gate, K2C = Mac backend, Jev+Laya routing judges → cike-exec-index/plan-product-lines-integration.md`.
- Lane IDs (CK order 2026-10-07, replaces bare "codex"): CX-MAC (Mac Codex, exec + interactive one lane), CX-TERM (Termux Codex, K2-driven), CX-MUSE (Muse app, k2-mobile grant), GBRAIN (shared memory itself, not a lane). Map: gbrain-access-map.md; brain fact #56; worklog identity sections.

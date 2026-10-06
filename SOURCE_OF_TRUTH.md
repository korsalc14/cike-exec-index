# cike-exec-index Source-of-Truth Map

Updated: October 5, 2026

Repo contract (CK rule 2026-10-05): CHANGELOG.md, README.md, and this
file exist in every repo, and every repo change is logged in all three
where each applies.

## Canonical systems

| Concern | Canonical location | Rule |
| --- | --- | --- |
| Team execution state | This repo: `leases.md`, `baselines.md` | Update same-day as reality changes. |
| Cross-repo decisions | This repo: `decisions.md` (index) + full docs in product repos | Index points, never duplicates. |
| Agent registry | This repo: `AGENTS.md` | Lanes, auth/tooling health, onboarding contract. |
| Operating frameworks | This repo: `plan-product-lines-integration.md`, `fast-lane.md`, `k2-mobile-protocol.md` | CK approves; agents follow. |
| Product code | dev-teams-env, cike-platform (their own repos) | Never copied here. |
| Business truth | cike_brain (Drive) | Product intent, pricing, approvals. |
| Agent working memory | gbrain tool (local PGLite) | Lessons and gotchas, never decisions or secrets. |

## Cross-agent operating rule

Before changing team state:

1. Read `leases.md` — never edit inside a live lease.
2. Make the change in exactly one home (no duplicates).
3. Log it in `CHANGELOG.md` the same session.
4. Commit with an `Agent:` trailer; push only on CK order.

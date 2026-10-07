# gbrain memory protocol — everyone's memory in, nothing lost, overlaps merged

Updated: 2026-10-05. Standing rule for all lanes (lead, Codex Mac, K2 mobile, future Jev/Laya).

## The shape: facts vs pages

- **Facts** (`remember`): atoms. One claim, one entity, one provenance. Durable truths, lessons, gotchas.
- **Pages** (`put_page`/`edit_page`): evolving topics. ONE page per topic (e.g. `turnsq-sms-status`), EDITED as progress advances — never a new page per update. History lives in the page, not in five competing facts.
- Rule of thumb: if it will change next week, it's a page. If it's true forever, it's a fact.

## Before every write (mandatory)

1. `recall` the topic first. If the brain already has it, you UPDATE — you don't duplicate.
2. New fact? Give it the shared entity slug (see registry below), provenance `date + lane + where-verified`.
3. Keyword-only retrieval is live (no embeddings): use the SAME words the team uses. The entity slug is the index — spelling matters.

## Overlap: same info, different timeline/progress

This WILL happen (three lanes, one brain). The protocol:

1. **Provenance dates disambiguate.** Every status-carrying fact/page states its date. Newer provenance wins for "current status" — older entries are history, not lies. Never delete history to make the present look clean.
2. **One current-status holder per topic.** A page per live topic (`spec-001-status`, `pilot-deploy-status`); lanes edit it forward. Facts record milestones, never "current state."
3. **Real contradiction (lanes disagree on what IS true):** both versions stay, flagged; LEAD adjudicates and records the verdict with evidence. No lane overwrites another's observation silently.
4. **Supersede, don't erase:** when a fact is replaced, `remember` the new one and `forget` the old ONLY when the old is fully subsumed (same entity, new date, strictly more correct). Test probes and scratch: forget freely. Shared truths: lead approves the forget.
5. **Leases before bulk writes:** claim in `leases.md` so two lanes never merge the same topic at once.

## Entity registry (shared slugs — extend, never fork)

| Slug | Covers |
|---|---|
| `gbrain-protocol` | this protocol itself: facts-vs-pages, recall-before-write, timeline + contradiction rules, backfill scope (facts #12–16) |
| `shellular` | Shellular verdict (operator yes / bridge no), view-operate-only rule, research-done pointer (facts #52–54) |
| `single-home` | repo roles: WHAT (digital-products) / BUILT (cike-platform) / BENCH (dev-teams-env) |
| `gbrain-access` | how each lane reaches the brain, tokens, lock rules |
| `turnsq-status` | TurnSQ product state, pilot, leases, branches |
| `regent-status` | Regent K2 state, stack, models, branches |
| `k2-lane`, `codex-lane`, `lead-lane` | lane-specific lessons (who learned what) |
| `billing-whop` | billing platform, Whop/Stripe/Paddle decisions |
| `deploy-godaddy` | pilot hosting, packages, verify steps |

New topic = new slug, recorded here first, then used by everyone.

## Backfill scope (what goes in, what never does)

IN: decisions with evidence, working lessons with provenance, current-status pages per live topic, lease/grant records (names + dates, never tokens).
NEVER: secrets/tokens/keys, narrative session log, build output, pilot artifacts, personal data, anything uncommitted elsewhere.
Backlog order: live topics first (spec-001, pilot, grants), then durable lessons, then history worth keeping.

## What each lane needs to contribute

- **Lead (Mac, admin):** adjudication, forgets of shared truths, bulk ops (sources sync, compile-context in serve-down windows), lease keeping.
- **Codex Mac (MCP grant, read+write):** writes lessons + milestone facts per unit worked, with provenance; recalls before writing; follows this file (already in its worklog).
- **K2 mobile (MCP grant, read+write):** same duties from the field; relay open questions via CK when unsure whether to merge or fork.
- **Jev/Laya (future):** read-only until their lanes are defined; grants minted per lane, never shared.

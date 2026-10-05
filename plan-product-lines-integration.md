# Plan: product-lines integration without confusion (DRAFT for CK)

- Status: DRAFT PLAN — no code, no moves until CK approves. Author: principal architect.
- Date: 2026-10-05. Trigger: K2→team handoff (product lines) + new lines
  (digital products, voice agents) spreading across repos with no single map.

## 0. Definitions (flagged where assumed)

- K2M = Regent K2 Mobile: offline Android operator (regentk2-aos) with
  on-device brain (Gemma4 eb4 LiteRT). Existing.
- K2C = K2M's backend: Mac localhost running a bigger LLM, supporting the
  phone when a job gets too complex. (CK-defined 2026-10-05.)
- Routing judges: Jev + Laya decide per job whether it stays on the K2M
  on-device brain or escalates to the K2C brain. Every routing decision
  outputs the same verdict shape: right-tool-called (yes/no), action
  (approve/decline), event (create/cancel). No silent routing, ever.
- 90/10 rule: products are 90% deterministic code, 10% AI brain. Models
  assist (extraction, conversation) but never own permission, state,
  money, or proof. Already our practice (heuristic fallbacks, approval
  gates, dead-port Ollama tests); this plan makes it a merge gate.

## 1. Why gbrain/gstack didn't stick (honest retro)

cike_brain stayed a Drive pile nobody opens mid-work; cike-platform kept
its own conventions; cike-exec-index/ (ex-GBrain) became five more files; leases were never
adopted because NO enforcement point exists — no agent reads them before
acting (I didn't either, at first). Documents don't prevent confusion;
only checks placed where work already flows do. Everything below is a
check, not a document.

## 2. Single-home map (the confusion killer)

Every artifact has exactly one home. Anything elsewhere is a pointer.

| Artifact | Home | Elsewhere |
|---|---|---|
| Product content (guides, assets) | digital-products `products/` | nowhere else |
| Marketing/SEO/backlinks | digital-products `marketing/` | nowhere else |
| Task specs + queue | digital-products `specs/` + `QUEUE.md` | nowhere else |
| TurnSQ code | dev-teams-env `apps/turnsq/` (+ merge to cike-platform only by decision) | cike-platform `apps/nailapp` stays a README boundary until migration approved |
| Regent K2 code | dev-teams-env `apps/regent-k2/` | cike-platform copy is a snapshot, not a second truth |
| Billing/entitlement code | cike-platform `packages/billing/` | nowhere else |
| Voice-agent CONFIG | xAI console (live truth) | digital-products `products/voice-agents/` = reference copies + registry |
| Business truth/decisions | cike_brain (Drive) + decision docs in repos | cike-exec-index/decisions.md indexes only |
| Money movement | Whop (per charge/membership rule) | code records, never moves |

New rule: a second copy in a second place is a bug, filed and fixed same-day.

## 3. Status-by-evidence (fixes the spec-001 incident)

Spec 001 was built, tested (68/68+4/4+19/19), committed — yet the handoff
still says TODO/blocked. Root cause: status flips by whoever edits text,
with no evidence attached. New rule:

- QUEUE/spec status changes ONLY with an evidence link (commit SHA +
  test counts + who verified). "DONE" without a SHA is invalid on sight.
- The loop gains one step: Mac Codex executes → **lead verifies
  independently** (own commands, own eyes — the practice that caught the
  silent CLI death, the unpushed drift, and the IP leak) → K2 reviews →
  CK approves live/money/publish.
- Stale-handoff guard: any handoff older than 7 days gets a one-line
  re-verified stamp or is marked STALE. Undated claims are treated as stale.

## 4. 90/10 as a merge gate (not a slogan)

Every product PR must show: (a) full suite green with ALL AI/model calls
stubbed or dead-ported (proves the 90% stands alone — our Ollama-dead-port
and heuristic-fallback tests are the template); (b) each model call site
listed with its no-model fallback behavior; (c) no secret, key, or endpoint
required at build/test time. Reviewer rejects without these three.

## 5. Lanes with entry points (Jev + Laya join safely)

- Jev (speed): takes spec slices with frozen interfaces; never touches
  architecture, leases, manifests, or merges. Entry: one spec slice +
  the repo's own test command.
- Laya (logic): red-teams and verifies others' claims (blind rebuilds,
  missing-test hunts, evidence audits like the IP test). Never ships
  features. Entry: the verification protocol in the codex-delegate skill.
- Codex (build): feature units end to end, per existing pattern.
- Lead (Muse Spark): plan, scope, design, independent verification,
  push/merge calls. Only CK approves live, money, publish.

## 6. Phased execution

- P0 (this week): file this plan; flip spec-001 QUEUE status with evidence
  links after K2 review; reconcile handoff staleness (SMS section already
  outdated); onboard Jev+Laya through the contract.
- P1: single-home cleanup pass (kill duplicate copies found anywhere);
  90/10 gate enforced on next three merges; cike-exec-index updated same-day
  with every move.
- P2: K2M/K2C under the same map (K2M code stays in regentk2-aos; K2C gets
  a defined home per CK's definition); billing/Whop adapter per its
  approved handoff; SMS provider decision unblocks spec-001 live path.

## 7. Decisions (CK rulings recorded)
- D1 CLOSED: K2C = Mac localhost bigger-LLM backend for K2M.
- D2 APPROVED: single-home map stands. CK's framing confirmed with one
  sharpening — gbrain's job is making NEW CHANGES findable: the decision
  index answers "what changed and where" same-day, and single-home means
  there is never a second copy to hunt through.
- D3 CLOSED (CK-owned fault, lesson banked): K2 was asked for a handoff
  mid-flight while lead+Codex held the same scope — two writers, one
  artifact. Standing prevention: one writer per artifact (lease board) +
  status flips only with evidence links.
- D4 APPROVED ALTERNATIVE: email reports + appointment notifications
  instead of paid SMS for now. SMS stays parked (no provider, no spend).
  Email path becomes the live notification channel; spec-001 seam stays
  valid for later.
- D5 PENDING: this plan doc's final approval (then it is the working map).

## 8. K2M/K2C routing (the Jev+Laya decision job)

Phone brain (small, fast, private, offline) vs Mac brain (bigger LLM,
slower, needs connectivity). Rule of thumb: default STAY on the phone;
escalate only when the job exceeds it (multi-step reasoning, long context,
low confidence). The judges' verdict on every job:

- `tool_correct`: did the phone pick the right tool for this job?
- `action`: approve the action, or decline it with a reason.
- `event`: create the event record, or cancel creation (with reason —
  cancellations are logged, never silent).

Routing itself is deterministic code (thresholds + confidence scores);
Jev+Laya judge the _outcomes_ (was escalation right? was the decline
correct?) and their verdicts feed back into the thresholds. Models advise,
thresholds decide — same 90/10 shape as everything else.

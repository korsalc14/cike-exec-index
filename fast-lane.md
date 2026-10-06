# Fast lane — phone-only 15-minute work (DRAFT, needs CK sign-off)

> Self-audit 2026-10-05: several claims below were my assumptions, now
> marked. Verified facts: whop CLI 0.23.1 works read-only; BOTH accounts
> visible (AI Mastery biz_A2jVa5Mtx7Lv5L AND CiKe biz_4a7cLjgu5WwU1s).

Problem: the full loop assumes Mac + lead verification. CK often has only
the phone (K2) and needs Whop/small changes fast.

## Whop in 15 minutes (phone-only path)
Prerequisite MET (CK 2026-10-05): K2 holds its own Whop API key in its
own environment. It is never pasted here, stored in repos, or logged.
Mac-side CLI credentials (`~/.config/whop/credentials.json`) are a
separate key for operator-side work — the two must never be swapped.

Per-task protocol on mobile:
1. CK says what to change in plain words (price, headline, description).
2. K2 makes ONLY drafts — never publishes, never activates checkout.
   (UNVERIFIED: hidden/draft creation mechanics not yet proven — prove
   before first real task.)
3. K2 reports back: what changed (draft link), old vs new values.
4. Publish/charge still needs CK's explicit per-action yes (unchanged rule).
Drafts are reversible; published money is not. That asymmetry is the
entire safety model.

ACCOUNT RULE (verified 2026-10-05): this machine's CLI sees TWO accounts.
Every command must scope to CiKe `biz_4a7cLjgu5WwU1s`. Never touch
AI Mastery `biz_A2jVa5Mtx7Lv5L` (different business, per handoff).

## Small code changes without a Mac
Definition of "small" (all must hold): single file, outside leases /
manifests / money / auth paths, full suite stays green, no new
dependencies. Anything bigger waits for the Mac loop.
- K2 (or Jev/Laya) prepares the exact diff + test evidence.
- It lands as a branch; merge happens at the next Mac session after
  lead verification. Branches are cheap, bad merges are expensive.
- Emergency exception: none. If it can't wait, it goes through the
  normal loop faster — skipping verification is how outages are born
  (see: the approve-crash that killed the server, caught only by
  independent re-runs).

## What stays Mac-only until re-decided
Merges, pushes, releases, GoDaddy uploads, model installs, anything
with credentials, and the final word on money movement.

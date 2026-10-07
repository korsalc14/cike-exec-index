# Core issuance baseline

2026-10-06 — Codex completed cike-platform feat/turnsq-issuance-core, local commit 845d1c392f392313eba558fd5961aa0541ccd791; no push.

Shared WebCrypto issuance, TurnSQ trust-set integration, legacy genesis compatibility. Product decision: cike-platform/docs/decisions/product-issuance-standard.md. Production server public key remains a deploy-time addition.

Checks: billing 10/10; issuance 9/9; TurnSQ acceptance 67/67 (64 existing + 3 new), boundary 4/4, browser 17/17, deploy 3/3, typecheck and diff check passed. Single-file built before boundary/browser; hosted package rebuilt without single-file before deploy. Full output: /tmp/turnsq-issuance-full-test-output.txt.

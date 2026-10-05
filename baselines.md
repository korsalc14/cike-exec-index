# Baselines — what green means right now (2026-10-05, re-verified this session)

- dev-teams-env `main`: TurnSQ acceptance 64/64, Regent 59/59.
- dev-teams-env `feat/turnsq-sms-001` (spec 001, unpushed): 68/68 + 4/4
  boundary + 19/19 browser, builds pass. Missing build artifacts was the
  only failure mode seen — always run build + build:single before tests.
- dev-teams-env `feat/gbrain-gstack-framework`: framework draft doc only.
- cike-platform `feat/billing-core`: billing package 10/10 green.
- Services: Regent stack (:4242/:8642) healthy; Ollama gemma4:12b resident
  Forever (re-pin if a restart evicts it); NailApp localhost :4173 serves
  on demand (kill stale squatters on 4173 first).
- Rule: reproduce the baseline before changing anything; record new
  proven numbers here same-day, with the command that proved them.

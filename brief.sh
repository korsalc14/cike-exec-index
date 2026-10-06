#!/bin/bash
# cike-brief: assemble current team state into one paste-ready text for
# agents that cannot read this Mac (e.g. K2 on mobile).
# Usage: ./brief.sh [extra note]
set -u
D="$(cd "$(dirname "$0")" && pwd)"
echo "GBRAIN STATE BRIEF — $(date '+%F %T %Z')"
echo "================================================================"
[ -n "${1:-}" ] && { echo "NOTE: $1"; echo "----------------------------------------------------------------"; }
for f in baselines.md leases.md decisions.md; do
  echo "### $f"
  cat "$D/$f"
  echo "----------------------------------------------------------------"
done
echo "Agents on duty:"
grep -E "^\| (Muse|Codex|K2|Jev|Laya)" "$D/AGENTS.md" 2>/dev/null || echo "(see AGENTS.md)"
echo "================================================================"
echo "End of brief. Verify anything stale before acting on it."

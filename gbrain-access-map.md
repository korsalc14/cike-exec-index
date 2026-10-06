# gbrain access map — who has what, where (garrytan's tool, NOT our folder)

Updated: 2026-10-05. Our team-state home is this repo (cike-exec-index).
The shared agent memory is garrytan/gbrain v0.60.72.0, one PGLite DB on this Mac.

## The one brain

| What | Where | State as of 2026-10-05 |
|---|---|---|
| Brain DB | `~/.gbrain/brain.pglite` (+ `.gbrain-owner.json`) | live, written today (fact #5 probe kept: exec-session symlink lesson) |
| CLI | `~/.bun/bin/gbrain`, symlinked into `~/.local/bin/` | runs everywhere (Terminal + exec sessions); v0.60.72.0 pinned — 0.60.93.0 offered, do NOT upgrade without CK |
| 24/7 serve | `com.gbrain.serve` LaunchAgent (gbrain-managed, replaced hand-rolled `com.cike.gbrain-serve` + wrapper + stale token — all deleted, no secret sprawl); loopback `:3131`, token `~/.gbrain/serve/admin-token` (600), receipt `expose.json` | UP since 2026-10-05; K2 tailnet proxy `http://mac.tail9eec95.ts.net/` (my `tailscale serve --bg --http=80`, untouched by migration) still points at `:3131` — K2 path intact |
| LOCK (all Mac lanes read this) | PGLite is SINGLE-OPEN, held by serve | direct CLI remember/recall FAILS with `pglite_busy` while serve runs (proven: Codex probe + lead self-test). Mac lanes = relay via lead until `mcp grant` unit lands. Serve stays up — K2 test has priority |
| Mac sleep | `pmset sleep 0` currently (incidental — held by sharingd/ChatGPT/caffeinate, not a setting) | ONE MANUAL STEP for CK: System Settings → Energy → "Prevent automatic sleeping on power adapter" (or `sudo pmset -c sleep 0` in Terminal) — no passwordless sudo here, so I could not set it; without this, sleep still pauses everything |
| Upgrade prompt | every command prints UPGRADE_AVAILABLE | noise, ignore until CK approves upgrade |
| Correct syntax | `remember <fact> --provenance "..." --entity slug` | provenance REQUIRED; recall matches entity first, then text |

## Who reaches it how

| Lane | Has on disk | Reaches brain via | Last verified |
|---|---|---|---|
| Muse Spark (lead, this Mac) | this repo @ `~/Documents/cike-exec-index` (main = `856a846`, in sync); repos under `~/Documents/`; `~/laya-env`; `~/.gbrain/` | direct CLI | 2026-10-05 (remember/recall #5 green) |
| Codex exec sessions (Mac) | own MCP server `gbrain` in codex config (streamable HTTP, coding-agent, read+write); grant `codex-mac`, cred `~/.gbrain/serve/codex-mac.json` (600, token TTL 30d); env var `GBRAIN_REMOTE_TOKEN` (upstream standard); matches upstream CODEX.md manual-setup path, plugin lane deliberately skipped (lock fight) | GREEN 2026-10-05: two probes recalled fact #5 verbatim via MCP. Direct CLI stays dead (`pglite_busy`) — MCP only. Queued: `compile-context` core memory (needs serve-down window) |
| K2 (mobile, no Mac disk) | NOTHING on this Mac readable to it; own Whop key in its own env | relay ONLY: lead runs `brief.sh` here, pastes text; lead writes K2's lessons with provenance "via K2 relay" | brief.sh = 68-line generator, current |
| Jev (judge lane) | no key, no local files | blocked until CK signup+payment decision | research done, onboarding packet open |
| Laya (logic lane) | `~/laya-env` (pip laya 0.3.28, HF weights on first run) | local library, not a brain client; calibration + thresholds open | live proof 2026-10-04 (billing choice, noul 0.13) |

## Repo states (single-home check)

| Repo | Local | Remote | Note |
|---|---|---|---|
| cike-exec-index (this one) | main `856a846` | in sync | team-state home |
| cike-platform | main `ed2c9ff` | in sync | TurnSQ + Regent merged |
| dev-teams-env | `docs/repo-contracts` ahead 1 (`9e9e76a`) | main `d60323d` | 1 commit unpushed — push or drop, do not let it rot |
| digital-products | main `54d5b72` | in sync | local QUEUE dir absent — K2's loop owns it, do not recreate here |

## Tailnet (K2 on 5G — LAN is unreachable, tailnet is required)

| What | Where / state as of 2026-10-05 |
|---|---|
| tailscaled | CLI build (`brew install tailscale` — GUI cask needs sudo, skipped); `com.cike.tailscaled` LaunchAgent, userspace-networking (no root needed), state `~/.tailscale/`; supervised, awaiting login |
| Mac login | browser link generated (one-time, in login.txt); CK opens it, signs in, approves machine → Mac gets `100.x` |
| K2 phone side | Tailscale Android app, SAME account as Mac login — K2/user step, cannot do from here |
| Both online | mac `100.124.92.112` + korsals-ultra `100.107.139.30`, same tailnet, verified 2026-10-05 |
| Serve design (corrected) | direct `--bind 100.x` is IMPOSSIBLE in userspace mode (no local interface carries the address — proven by bind test; gbrain mislabels it "port in use"). Final: gbrain stays loopback `:3131` (healthy, token via 700 wrapper) + `tailscale serve` proxies it to tailnet HTTPS. Zero LAN exposure, secret never in plist/logs/repo |
| Proxy LIVE | `https://mac.tail9eec95.ts.net/` → loopback `:3131`, tailnet-only (serve status confirmed). Admin click done by CK |
| Mac self-test limit | this Mac CANNOT reach its own tailnet name/IP (userspace mode: no magicDNS resolver, no local 100.x interface, no hairpin). Loopback health = ok; proxy config = confirmed; phone→Mac is the only true proof and only K2 can run it |
| K2 phone test (Termux) | GREEN 2026-10-05: phone→Mac over 5G/tailnet proven end-to-end. Next unit (awaiting CK): recall/API auth via `mcp grant` — same unit also unblocks Codex-on-Mac |
| HTTPS failure (diagnosed) | phone reached Mac fine; TLS died server-side (`no TailscaleVarRoot` — no provisioned cert in userspace mode). Fix: plain-HTTP serve inside the tailnet (transport already WireGuard-encrypted, HTTPS redundant). HTTPS certs remain an optional admin-console upgrade, not needed |

## Rules (anti-confusion)

1. One writer at a time: claim a lease in `leases.md` before writing brain facts from any Mac lane.
2. Brain holds working lessons + provenance. Decisions + leases + baselines live HERE, never only in the brain.
3. No secrets in either place — keys stay in their own environments (K2's Whop key, Jev key when it exists).
4. Every fact needs `--provenance` (who saw it, where). Entity slugs: `gbrain-access`, lane names, repo names.
5. Version pin: gbrain stays 0.60.72.0 until CK approves an upgrade (re-verify round-trip after).
6. K2 never gets direct access (impossible offline) — relay via `brief.sh`, and its lessons are labeled as relayed.

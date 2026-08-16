# Loop Engineering — Practice Projects

Hands-on practice repo for the [Loop Engineering Crash Course](https://agentfactory.panaversity.org/docs/loop-engineering-crash-course), covering all four loop heartbeats — in-session, conditional (run-until-done), scheduled, and event-driven — plus the spine (memory between runs).

Built following [panaversity/agentfactory-labs](https://github.com/panaversity/agentfactory-labs/tree/main/crash-course/loop-eng).

## Projects

| # | Project | Heartbeat | Concept | What it proves |
|---|---|---|---|---|
| 1 | [`iss-loop/`](./iss-loop) | In-session | 4 | `/loop` fetches the real ISS position every minute, live, while the terminal stays open. Closing the terminal kills the loop — the concept itself. |
| 2 | [`portfolio-starter/`](./portfolio-starter) | Conditional (run-until-done) | 5 | `/goal` builds a full portfolio site from a CV, checks it against 20 automated checks + a separate reviewer agent (6 judgment criteria), and retries until both pass — 20/20 and PASS, verified. |
| 3 | [`sky-watch/`](./sky-watch) | Scheduled | 6 | A daily asteroid-forecast loop. Tried as a cloud Routine (blocked by sandbox network limits — documented below), then set up as a local Windows Task Scheduler job hitting NASA's real API. |
| 4 | [`doorbell/`](./doorbell) | Event-driven | 7 | A GitHub Actions workflow reviews every pull request automatically. Proven with a real bug (`min` → `max` swap), caught and correctly explained by an unattended review, citing the exact commit hash. |
| 5 | [`paper-watch/`](./paper-watch) | Spine (memory) | 12 | An arXiv paper watcher backed by `progress.md`. Second run on the same topic returns "nothing new." Deleting `progress.md` makes every paper look new again — proving "no spine, no loop." |

## Notable debugging along the way

- **iss-loop / sky-watch:** fixed a broken Claude Code `settings.json` that had been silently routed through a local Gemini proxy (`gc/gemini-3-pro-preview`) instead of Anthropic's servers — removed the override, restored real Claude connectivity.
- **sky-watch:** cloud Routines currently can't reach `api.nasa.gov` (Anthropic's sandbox network allowlist doesn't support arbitrary external domains yet) — fell back to a local Task Scheduler job instead, which works with zero restrictions.
- **paper-watch:** fixed an SSL certificate verification error (`CERTIFICATE_VERIFY_FAILED`) by pointing `SSL_CERT_FILE` at `certifi`'s CA bundle, made permanent in the user environment.
- **doorbell:** added `CLAUDE_CODE_OAUTH_TOKEN` as a GitHub Actions secret, generated via `claude setup-token`, so the review runs on GitHub's own servers with no local machine involved.

## Privacy note (portfolio-starter)

The generated portfolio site deliberately excludes personal identifiers (NIC number, father's name, full home address) that were present in the source CV — only city/country is used for location context.
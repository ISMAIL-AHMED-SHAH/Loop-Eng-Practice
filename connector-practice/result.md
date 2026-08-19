# GitHub API Exercise: Recently Updated Repositories

## Task
List the 5 most recently updated GitHub repositories with their last commit date.

## Note
No `gh` CLI or GitHub MCP connector was available in this environment. Checked via Bash (`gh --version`) and PowerShell — `gh` was not found on PATH, and no GitHub-specific tool appeared in the deferred tools list. Fell back to the public GitHub REST API instead, using the username (`ISMAIL-AHMED-SHAH`) found from the local repo's `git remote -v`.

## Command used
```
WebFetch: https://api.github.com/users/ISMAIL-AHMED-SHAH/repos?sort=updated&per_page=5
```

This only sees **public** repos (unauthenticated API call), so any private repos are not reflected.

## Result: 5 most recently updated repos

| # | Repository | Last commit (pushed_at) |
|---|---|---|
| 1 | **Loop-Eng-Practice** | 2026-08-19 04:32 UTC |
| 2 | **Exam-Prep-Agent-Factory** | 2026-08-11 13:24 UTC |
| 3 | **ISMAIL-AHMED-SHAH** | 2026-08-19 00:30 UTC |
| 4 | **Digital-FTE** | 2026-02-26 05:08 UTC |
| 5 | **Hackathon-Book** | 2025-12-02 00:53 UTC |

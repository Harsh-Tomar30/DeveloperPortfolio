# API Summary

## What is a REST API?

A REST API works like a waiter between two programs. My terminal asks GitHub for data using a URL, and GitHub sends the data back in JSON format. I used this to fetch my own GitHub profile.

## HTTP Status Codes Observed

| Code | Meaning | Where I saw it |
|------|---------|----------------|
| 200 | OK: the request succeeded and the server returned the data | Fetching my profile, `users/Harsh-Tomar30` |
| 404 | Not Found: the requested resource does not exist | Fetching a username that does not exist |

## jq Filter Used

    jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'


- `jq` reads the JSON that is piped into it.
- `{ ... }` builds a new, smaller JSON object with only the fields I want.
- `name:.name` takes the `name` field from the input and stores it under the key `name`.
- `repos:.public_repos` takes `public_repos` and renames it to `repos`.
- `followers:.followers` takes the number of followers.
- `joined:.created_at` takes the account creation date and renames it to `joined`.

## Results

- Name: Harsh Tomar
- Public repos: 4
- Followers: 0
- Joined: 2026-10-26
- JSONPlaceholder posts fetched: 100 (checked with `jq length`)

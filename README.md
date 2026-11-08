# Homebrew tap

Signed and notarized macOS apps by Arhun Saday.

```bash
brew trust --cask arhunsaday/tap/timelet arhunsaday/tap/cloud-cost-map
brew install --cask arhunsaday/tap/timelet
brew install --cask arhunsaday/tap/cloud-cost-map
```

Homebrew only loads casks from third-party taps once you trust them; `brew trust` does that for these two.

| Cask | App |
|---|---|
| `timelet` | [Timelet](https://github.com/arhunsaday/timelet) — a time tracker that asks instead of making you remember |
| `cloud-cost-map` | [Cloud Cost Map](https://github.com/arhunsaday/cloud-cost-map) — see where your cloud money goes |

## Updating a cask

After publishing a release, set `version` and `sha256` in `Casks/<app>.rb`
(the SHA-256 is printed by `scripts/release.sh` and listed in the release notes),
then commit and push.

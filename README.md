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

## Preflight

[Preflight](https://github.com/arhunsaday/preflight) shows and controls your AI coding setup
(Claude Code, Codex, Cursor). It is in beta; these entries track the latest pre-release.

| Install | What you get |
|---|---|
| `brew install --cask arhunsaday/tap/preflight` | Desktop app and the `preflight` CLI/TUI |
| `brew install --cask arhunsaday/tap/preflight-app` | Desktop app only |
| `brew install arhunsaday/tap/preflight-cli` | `preflight` CLI and terminal UI only (macOS and Linux) |

Trust what you install first, for example for everything:

```bash
brew trust --cask arhunsaday/tap/preflight
brew trust --formula arhunsaday/tap/preflight-cli
brew install --cask arhunsaday/tap/preflight
```

The desktop app updates itself; `brew upgrade` updates the CLI.

## Updating a cask

After publishing a release, set `version` and `sha256` in `Casks/<app>.rb`
(the SHA-256 is printed by `scripts/release.sh` and listed in the release notes),
then commit and push.

A Preflight release changes three files: `version` and both `sha256` values in
`Casks/preflight.rb` and `Casks/preflight-app.rb` (the `.dmg` lines of the
release's `SHA256SUMS`), and `url` and `sha256` in `Formula/preflight-cli.rb`
(the `.tgz` line).

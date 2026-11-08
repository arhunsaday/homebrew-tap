cask "preflight" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-beta.1"
  sha256 arm:   "3c92a25b166feb1e7312e01789d04b2151b09f04086256f5a8c01cb0feb1994f",
         intel: "adc8f027985020442aa610115bcb5883da032fc764b6871467fb5c8594ec1835"

  url "https://github.com/arhunsaday/preflight/releases/download/v#{version}/Preflight-#{version}-mac-#{arch}.dmg"
  name "Preflight"
  desc "Visibility and control for AI coding setups, desktop app and CLI"
  homepage "https://preflight.arhun.fr/"

  # Pre-releases only so far: switch to `strategy :github_latest` at the first stable release.
  livecheck do
    url "https://github.com/arhunsaday/preflight.git"
    regex(/^v?(\d+(?:\.\d+)+(?:-[\w.]+)?)$/i)
  end

  auto_updates true
  conflicts_with cask: "preflight-app"
  depends_on formula: "arhunsaday/tap/preflight-cli"
  depends_on macos: :ventura

  app "Preflight.app"

  zap trash: [
    "~/Library/Application Support/Preflight",
    "~/Library/Caches/dev.preflight.desktop",
    "~/Library/Caches/dev.preflight.desktop.ShipIt",
    "~/Library/Preferences/dev.preflight.desktop.plist",
    "~/Library/Saved Application State/dev.preflight.desktop.savedState",
  ]
end

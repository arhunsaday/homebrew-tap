cask "timelet" do
  version "1.0.0"
  sha256 "1338449619c785acae05c2929c85f9d512c93d5546a63b22166edb8af20e79be"

  url "https://github.com/arhunsaday/timelet/releases/download/v#{version}/Timelet-#{version}.dmg"
  name "Timelet"
  desc "Time tracker that asks instead of making you remember"
  homepage "https://github.com/arhunsaday/timelet"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Timelet.app"

  zap trash: [
    "~/Library/Application Support/Timelet",
    "~/Library/Preferences/com.timelet.app.plist",
  ]
end

cask "cloud-cost-map" do
  version "1.0.0"
  sha256 "07a6d52556496ffa5bca242ca4c8f7bf289bb78b578cfd8bea18342d9eff0617"

  url "https://github.com/arhunsaday/cloud-cost-map/releases/download/v#{version}/Cloud-Cost-Map-#{version}.dmg"
  name "Cloud Cost Map"
  desc "See where your cloud money goes"
  homepage "https://github.com/arhunsaday/cloud-cost-map"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Cloud Cost Map.app"

  zap trash: [
    "~/Library/Application Support/Cloud Cost Map",
    "~/Library/Preferences/app.cloudcostmap.CloudCostMap.plist",
  ]
end

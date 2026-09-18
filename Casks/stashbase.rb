cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.9.8"
  sha256 arm: "7adcc7dfdaa0b792a0edd8da9403cfda19ee71f618fba0b9fb1e149aaa23f205",
         intel: "75a0d27bd69e3b275b8c9648e0ed4033516e50df653e10cd10c96ea55eac9107"

  url "https://github.com/liliu-z/stashbase/releases/download/v#{version}/StashBase-#{version}-mac-#{arch}.dmg"
  name "StashBase"
  desc "StashBase is an IDE for writing: brainstorm, draft, and revise in local projects."
  homepage "https://github.com/liliu-z/stashbase"
  depends_on macos: ">= :monterey"

  app "StashBase.app"

  zap trash: [
    "~/.stashbase",
    "~/Library/Application Support/StashBase",
    "~/Library/Logs/StashBase",
    "~/Library/Preferences/com.stashbase.app.plist",
    "~/Library/Saved Application State/com.stashbase.app.savedState",
  ]
end

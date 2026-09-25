cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.12.0"
  sha256 arm: "8b21fc23d873bccdd0b064281233675966418e866fade9c72c60f3aef883de2d",
         intel: "90cab5ad907ecb0fccf4cf2056c4714d74d23e7c89f5e3436858acfcf9129d24"

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

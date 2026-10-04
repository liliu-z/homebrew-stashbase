cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.14.0"
  sha256 arm: "9cea924b87b8cb8d6a7058fb301923bca172d7e234fbbd40061576274d3b1d2a",
         intel: "1d67cf50676377d2b6661e2bbdee652308d7e7a33e71c72a3f87ad074a3e12a4"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.5"
  sha256 arm: "90540f6b2993407e7ee66c03424d7e46ea279084fc57a6495bd1d8d7c145ca17",
         intel: "7fd99db656b854a15b989fef896ef932f71d898be4f1b121ab85a47c000e6794"

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

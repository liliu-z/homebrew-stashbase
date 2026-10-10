cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.6"
  sha256 arm: "c6bfc104a44fea9b5d296051fa88adba1ab3ed80000cf4addc8dbd074c3e554c",
         intel: "40e816bca8e4e2f42488d26f8eea73b6935cc1d6d1a87973dbcf62e4787b1da5"

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

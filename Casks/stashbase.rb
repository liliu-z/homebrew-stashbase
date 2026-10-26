cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.17.2"
  sha256 arm: "40f5438ffcde92816fb81813b397a6e37e367b26f1a4e4b34903644b898d2005",
         intel: "8c52e9bdfb32f63e4a3ee5bff99f2f6c94ae91ed78f6494b30f4a30041bd9a82"

  url "https://github.com/liliu-z/stashbase/releases/download/v#{version}/StashBase-#{version}-mac-#{arch}.dmg"
  name "StashBase"
  desc "An open-source, local-first writing workspace. Write with Claude and Codex, drawing on your own sources and past work."
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

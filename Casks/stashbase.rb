cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.11"
  sha256 arm: "0016309c0aea7f278f41363adb9b02cc43a3d6834b82f3cd0862fc8776573a65",
         intel: "201483bebbb213119b47a21ce386c26d9f3b3962bb16540c8b1562258bdec266"

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

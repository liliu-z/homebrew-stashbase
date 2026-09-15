cask "stashbase" do
  version "2.8.0"
  sha256 "b55bf51c3d80dd0429cbb381d03537acbf7e289b790c1a43e350ab9ab72b720e"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.8.0/StashBase-2.8.0-mac-arm64.dmg"
  name "StashBase"
  desc "StashBase is an IDE for writing: brainstorm, draft, and revise in local projects."
  homepage "https://github.com/liliu-z/stashbase"

  app "StashBase.app"

  zap trash: [
    "~/.stashbase",
    "~/Library/Application Support/StashBase",
    "~/Library/Logs/StashBase",
    "~/Library/Preferences/com.stashbase.app.plist",
    "~/Library/Saved Application State/com.stashbase.app.savedState",
  ]
end

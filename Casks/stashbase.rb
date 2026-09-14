cask "stashbase" do
  version "2.7.0"
  sha256 "4bb8e6000368be69ce3d84f5a7ff0328edd34c48f6b9dd8e774656fd8f1cd31f"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.7.0/StashBase-2.7.0-mac-arm64.dmg"
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

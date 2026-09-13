cask "stashbase" do
  version "2.6.0"
  sha256 "670d6552222f2e160922f606b98330f28b287b259ed8c1a2204f7eb7e7e4d074"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.6.0/StashBase-2.6.0-mac-arm64.dmg"
  name "StashBase"
  desc "StashBase is a Wiki for your local files."
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

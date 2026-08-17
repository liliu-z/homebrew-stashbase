cask "stashbase" do
  version "2.0.4"
  sha256 "3ff381f9b255a7b70b629bd2ef85621837801393fcb5fd48dc7acfb1ed033282"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.0.4/StashBase-2.0.4-mac-arm64.dmg"
  name "StashBase"
  desc "Local-first knowledge base desktop app."
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

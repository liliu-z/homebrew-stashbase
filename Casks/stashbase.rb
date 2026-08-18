cask "stashbase" do
  version "2.0.8"
  sha256 "560e193bb8544e35b49a5803902511f9ad6be01cabf551089162f783d5a03125"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.0.8/StashBase-2.0.8-mac-arm64.dmg"
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

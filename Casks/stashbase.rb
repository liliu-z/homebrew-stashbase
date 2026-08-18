cask "stashbase" do
  version "2.0.7"
  sha256 "ed8fa77f257abf212d255664718e4f3542734277bb4f8ff2601ef934cf796819"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.0.7/StashBase-2.0.7-mac-arm64.dmg"
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

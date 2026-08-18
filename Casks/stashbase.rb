cask "stashbase" do
  version "2.0.9"
  sha256 "78f212a8bf41af9a62dea42c64c2932cdc7b55fc259a0f88e283fbe76b38c78a"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.0.9/StashBase-2.0.9-mac-arm64.dmg"
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

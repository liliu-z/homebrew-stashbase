cask "stashbase" do
  version "2.1.1"
  sha256 "902d51a579cd5ca2a30289f3ada7fe8ab0936eaa196f5c661700c0e720c0b0c0"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.1.1/StashBase-2.1.1-mac-arm64.dmg"
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

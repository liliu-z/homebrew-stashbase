cask "stashbase" do
  version "2.2.1"
  sha256 "634de08f6c0474a05ba759b85384078af1ee873c231e24181eb44155bb73be66"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.2.1/StashBase-2.2.1-mac-arm64.dmg"
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

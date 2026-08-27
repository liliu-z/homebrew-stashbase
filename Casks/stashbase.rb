cask "stashbase" do
  version "2.3.0"
  sha256 "0ebd0e6f3c5444bb7f65f92821b4aad585f0e69fd0883061bd5e90138f1d1e35"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.3.0/StashBase-2.3.0-mac-arm64.dmg"
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

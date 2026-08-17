cask "stashbase" do
  version "2.0.6"
  sha256 "04ffd7aceb5d39cf5413190cba3a531534fdde45cb32be6c06ff8361c64922c5"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.0.6/StashBase-2.0.6-mac-arm64.dmg"
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

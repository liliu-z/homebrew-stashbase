cask "stashbase" do
  version "2.3.2"
  sha256 "2065f879280b792fe6faa35e888a9d46078f260e09f0080c01f846ae55f03859"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.3.2/StashBase-2.3.2-mac-arm64.dmg"
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

cask "stashbase" do
  version "2.0.2"
  sha256 "aa512d2e883fec14c15e1c03d8ff918fb1968f3ccea6a549fd5f5f46372a7562"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.0.2/StashBase-2.0.2-mac-arm64.dmg"
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

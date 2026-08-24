cask "stashbase" do
  version "2.2.0"
  sha256 "e1d0c4f30bd1aa1b43b994201bc7681134ee4251af6ec16663a778e2c6a6d507"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.2.0/StashBase-2.2.0-mac-arm64.dmg"
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

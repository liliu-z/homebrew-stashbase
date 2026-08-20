cask "stashbase" do
  version "2.1.3"
  sha256 "3e18b88f3b9050bfaed12aea9c36aec846710c644cc3a0a966264cfb542cf4cc"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.1.3/StashBase-2.1.3-mac-arm64.dmg"
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

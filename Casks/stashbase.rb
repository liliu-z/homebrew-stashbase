cask "stashbase" do
  version "2.0.3"
  sha256 "3ed629a7b20abcee7d6b05af3087831fb5a19cfd2de985f1462a28d37e65897c"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.0.3/StashBase-2.0.3-mac-arm64.dmg"
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

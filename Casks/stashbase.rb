cask "stashbase" do
  version "2.1.0"
  sha256 "c9b85545eab9ce69393b94040be12027c082c796b0ad4f6640b54c542cbb9ce2"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.1.0/StashBase-2.1.0-mac-arm64.dmg"
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

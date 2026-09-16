cask "stashbase" do
  version "2.9.2"
  sha256 "ac4a5dce3f63bc99a8f5453918924af03122d12772c572f6c4d6de6d5a2a1070"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.9.2/StashBase-2.9.2-mac-arm64.dmg"
  name "StashBase"
  desc "StashBase is an IDE for writing: brainstorm, draft, and revise in local projects."
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

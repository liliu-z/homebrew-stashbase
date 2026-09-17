cask "stashbase" do
  version "2.9.3"
  sha256 "463d155e7d0763cb3e726386ec3bf005ce0a0f3c5b7e269f37d269b75b8c8ec6"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.9.3/StashBase-2.9.3-mac-arm64.dmg"
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

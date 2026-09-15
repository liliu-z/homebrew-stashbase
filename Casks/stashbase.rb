cask "stashbase" do
  version "2.9.0"
  sha256 "52666c423fcb66fd815752c49b38b85dde3f18a3168254fc463ef32acd8bcbd0"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.9.0/StashBase-2.9.0-mac-arm64.dmg"
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

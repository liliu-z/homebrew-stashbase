cask "stashbase" do
  version "2.1.2"
  sha256 "a46dde4ee2d0d65b0d83527594177c5a5d402fdc0405e134984707f302674313"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.1.2/StashBase-2.1.2-mac-arm64.dmg"
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

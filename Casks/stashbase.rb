cask "stashbase" do
  version "2.9.1"
  sha256 "8f30630d89fea5ad31e3cc0c39efae5e060c92f4c06f9e156602b56ddd6e06bb"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.9.1/StashBase-2.9.1-mac-arm64.dmg"
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

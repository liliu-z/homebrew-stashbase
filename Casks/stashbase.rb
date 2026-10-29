cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.2"
  sha256 arm: "ce014be0ddfe9f1a6c82b78a92caf2e8365c62238d4d37c8af9b820ab18a6bb9",
         intel: "9fa430be4a3ecadcf3cdfd4f1f03c9849de0096811ce4735bbf5afbe3f1da96d"

  url "https://github.com/liliu-z/stashbase/releases/download/v#{version}/StashBase-#{version}-mac-#{arch}.dmg"
  name "StashBase"
  desc "An open-source, local-first writing workspace. Write with Claude and Codex, drawing on your own sources and past work."
  homepage "https://github.com/liliu-z/stashbase"
  depends_on macos: ">= :monterey"

  app "StashBase.app"

  zap trash: [
    "~/.stashbase",
    "~/Library/Application Support/StashBase",
    "~/Library/Logs/StashBase",
    "~/Library/Preferences/com.stashbase.app.plist",
    "~/Library/Saved Application State/com.stashbase.app.savedState",
  ]
end

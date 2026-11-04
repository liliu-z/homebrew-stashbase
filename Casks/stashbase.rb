cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.9"
  sha256 arm: "a3b390f3fb6fff080af90c9943b4f071cdeaaeea432271c0eae69e888a8819ee",
         intel: "43399b601a40fcc8f24e6b73228c12d897a1bf0c566dbf60e3a240b3188602af"

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

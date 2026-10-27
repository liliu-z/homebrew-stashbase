cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.17.5"
  sha256 arm: "f1bd17c1c063093f682a73c8c8d1f2d4a31bb1806067df5cbb891c60c5735c57",
         intel: "c43d0bdd255357a0f9d3b98e97e661c1de49377c87e10e116654fe6d3f1adcce"

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

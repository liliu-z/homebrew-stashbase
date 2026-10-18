cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.10"
  sha256 arm: "8ccce638c181570cfca5c09527591ce4c717451f98b9cc880c9c37ee4ca11932",
         intel: "02627f2ce23b02aba1a603bb49cabb48957aca91a53ff37f574502385fe609fe"

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

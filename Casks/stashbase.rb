cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.1"
  sha256 arm: "40aa37cc437f184debc8f9254394d0ac174ae39039187b0ff4fead1885ac75a7",
         intel: "54cfb345f507eabe6ed4498d99f21f975470150ed658a88b827ce03d298afc26"

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

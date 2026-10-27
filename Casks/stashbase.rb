cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.17.4"
  sha256 arm: "5cca0711b098a5d8b592f4b112e3ad2d2074e75506e517af80949da2823b0692",
         intel: "2606c47178a57d610928848d20f6485ff2b14cd412f5e713b7a76b13856858b5"

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

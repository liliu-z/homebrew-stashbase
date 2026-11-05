cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.10"
  sha256 arm: "337b5e7adbf58cc5eff152ae6a0de136f3022eeff5a97e7c7edc997155cec775",
         intel: "876f192d5909ce7176a396d5cf605d2bf15114b9f9ab82083c2dc576f23bbd43"

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

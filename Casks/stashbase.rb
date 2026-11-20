cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.13"
  sha256 arm: "e566df5cf186a2dc06aa93ccdf94365e1541643851d32b0625c1ba254e0e5104",
         intel: "1f33dc550f4cc690188a11ec4270d71d6b229311ae00949c160cbc8a2e53e316"

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

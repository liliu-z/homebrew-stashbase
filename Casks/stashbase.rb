cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.8"
  sha256 arm: "dac6f60087a5391e9705b9f51261f8086cd191a441ea5e6f0cf7d28a55b4d9e0",
         intel: "387815f501e8c2fa20628b4c15ca3827a42a4464d69b783e261a6a5bccf3e388"

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

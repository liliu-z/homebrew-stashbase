cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.12"
  sha256 arm: "e82fd16cbef5200a0c3185f1ffa32fea50b52cf003f6fd0f77e99d11ae5e5568",
         intel: "8a859a1dc1b7e4e305e9f93a36983bf633ef026a0c6f2541bee5a1e22fbb1cb6"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.19.1"
  sha256 arm: "26e7b58546166ed15e16f3d845ba1a850c5f54faf3bd95c91608b403db80a9c9",
         intel: "6d5c2c6b5def99cab1b6a0495007a60ab0eb063f01ee00df99ea69f6c3d155b2"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.5"
  sha256 arm: "b30d136e0c59159360b5f0234c48f24227d978e51d7ddf1eed63ddd6b924cb3e",
         intel: "03316b3b8f218ea5245eccf3ad5b737a5c620d94d0e23fe04ee6751d59543385"

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

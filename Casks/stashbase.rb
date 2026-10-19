cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.13"
  sha256 arm: "84615d3a86b3d881f9231fe2f2c57136859730ad56e7c1399fb792a19396fd4f",
         intel: "99dda3afe447cceab8e8eea1e13606f1ecad82ff19cab0229434e6009008956b"

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

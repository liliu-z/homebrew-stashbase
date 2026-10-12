cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.10"
  sha256 arm: "30d355ae140717bb98944b5ed0c986aa0aacf9a6f0fbd5600c9a45bc90d5124a",
         intel: "402f5dfe1db98d0441022d888792edb57188c0a0657cb28836568a8627465b14"

  url "https://github.com/liliu-z/stashbase/releases/download/v#{version}/StashBase-#{version}-mac-#{arch}.dmg"
  name "StashBase"
  desc "StashBase is an IDE for writing: brainstorm, draft, and revise in local projects."
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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.6"
  sha256 arm: "2037203adf9a71224b1ea29434bc634f1572b11ac671f43fcb31ae66c089755b",
         intel: "cd62670f84a935f982d4e78af9b70e79acb965728227edd6b48448a8d962ff7f"

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

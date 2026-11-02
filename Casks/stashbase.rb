cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.7"
  sha256 arm: "5e27cb5dc370235d9ce65e863cfbae17dfa754f701195da87c790d7cc08b4eec",
         intel: "7124860c881d910f1a17113669e69faaa511c47c48e9285236bb633717370d8a"

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

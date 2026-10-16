cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.9"
  sha256 arm: "2eac7b27764a32f34d2ed7bb5631aa24af2df828a2f44348dc620f4d9df9e734",
         intel: "11acbad5e22ced947394e75c957b44973f4c4c792267d55f410a820b165cf482"

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

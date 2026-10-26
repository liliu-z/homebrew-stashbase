cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.17.3"
  sha256 arm: "d30a26acca3f4e155620f31550a0bf7816b597fe826f53bb745912fbc106a9ef",
         intel: "6cee14f25a3767b5ca0faed6e12301675b299d838f25c99848c7f672d24b4333"

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

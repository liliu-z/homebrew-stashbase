cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.11"
  sha256 arm: "a01fe2d2eb8b9f46512f3d8f8ea47d550c1fad569e5a59a7db0a2cd340eac028",
         intel: "c9eb321cd86f559de8ddc20a56388dd9fbf041b954f565d8a3d32dff02a3415e"

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

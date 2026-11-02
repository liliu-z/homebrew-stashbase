cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.6"
  sha256 arm: "3013c6cdd165328198af792130e96f0addf3c1520db3ac449a5b59abc3ea22be",
         intel: "bf39cd9c4e3e703b9473346d1c1919674ad43dc46362f1dc541d6a98dd3d2215"

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

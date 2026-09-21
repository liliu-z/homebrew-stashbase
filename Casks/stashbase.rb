cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.9.10"
  sha256 arm: "2dded7aab15b6ff0b6d97aadb245e573cafdb6b72b2dcb098e2be3bde0276e07",
         intel: "b6347dfedaf3c575b52495003c71ead4edc45587c449d4d49d1ef0c4f2d54fd0"

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

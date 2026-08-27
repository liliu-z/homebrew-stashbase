cask "stashbase" do
  version "2.3.1"
  sha256 "a09eb701c6d69c071366240026d028a4caa526a394e9d41874aa3e773bf85d9d"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.3.1/StashBase-2.3.1-mac-arm64.dmg"
  name "StashBase"
  desc "Local-first knowledge base desktop app."
  homepage "https://github.com/liliu-z/stashbase"

  app "StashBase.app"

  zap trash: [
    "~/.stashbase",
    "~/Library/Application Support/StashBase",
    "~/Library/Logs/StashBase",
    "~/Library/Preferences/com.stashbase.app.plist",
    "~/Library/Saved Application State/com.stashbase.app.savedState",
  ]
end

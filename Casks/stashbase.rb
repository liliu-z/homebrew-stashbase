cask "stashbase" do
  version "2.8.1"
  sha256 "e2686792dcfd19e93dde77de90e0dbabc720be7c140c73c581cdb003d75750b6"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.8.1/StashBase-2.8.1-mac-arm64.dmg"
  name "StashBase"
  desc "StashBase is an IDE for writing: brainstorm, draft, and revise in local projects."
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

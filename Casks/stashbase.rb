cask "stashbase" do
  version "2.4.0"
  sha256 "14497a265af4a122fd504766dbbae54af42a095536e150370515e4228d745058"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.4.0/StashBase-2.4.0-mac-arm64.dmg"
  name "StashBase"
  desc "StashBase is a Wiki for your local files."
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

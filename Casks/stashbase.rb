cask "stashbase" do
  version "2.5.0"
  sha256 "7ff962cba51e02b99ce41ed93ec0aa42c3099fdc7f82e91c1998db4e19d8fe70"

  url "https://github.com/liliu-z/stashbase/releases/download/v2.5.0/StashBase-2.5.0-mac-arm64.dmg"
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

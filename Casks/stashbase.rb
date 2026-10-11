cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.7"
  sha256 arm: "8790220e4b81606d98b50efefbbfac1cfb2f605c301927cef745ee9aaf0d6e7f",
         intel: "9d383d959cca8f3541d7526001adc517d0cf92840b94502a50f43d95d64b0e58"

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

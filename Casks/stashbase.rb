cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.5"
  sha256 arm: "0db779625cd26555027a2a49bb2b76c0d4e0668dda4950c20c6489bfc1294760",
         intel: "7f4a4ee1b8aedb6b204a24d1fc11a46ae2c42f2af135a54bc4c096a769e9f1ec"

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

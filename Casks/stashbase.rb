cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.4"
  sha256 arm: "db05386fbd9fdf50f7f6387cb724ebf363b8adda0161bbc842a641b894b783e2",
         intel: "63ee471a411d5df65f1731342b3e6b91e2adb46d465273390b55f8b657433151"

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

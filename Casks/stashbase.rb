cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.2"
  sha256 arm: "cf89ae2044894afd50a573aaca14803f730ade6aaca29600d67bca8ce7080ae0",
         intel: "84b10d821cd50dd804cb7bdcd67e73c42e5859d25b923c3f7f70d8574e53e4f8"

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

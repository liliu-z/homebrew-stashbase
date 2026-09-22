cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.9.11"
  sha256 arm: "a63e2f8a7ff7bffb30bd612c2996c28b7a66c1df86c5b6c35fc7cde28a94a7ef",
         intel: "6ff48aa379b91e9934bb0d819fa02aa39360909e6ff7ba7820656436fb81d344"

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

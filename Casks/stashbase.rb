cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.8"
  sha256 arm: "b9e009d016274d4208a53d73394d69030ac3019951e28e3a749729fa13976fb8",
         intel: "c411d8dc330f765339d063d8302c5fee8eb248aa476df7e99882b1b64b077c54"

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

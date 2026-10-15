cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.4"
  sha256 arm: "c44e96db1c26432ea4a6aed71a02324afce087539db951164534fc19147d6c09",
         intel: "f16a8723305f33505d419a7c52be587d7981c7e4601603e7cbb3900f2d282a93"

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

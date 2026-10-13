cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.0"
  sha256 arm: "2c75b6ee98bbae85ee5b5f90212731fddfe4e721ca36bc73938b80d053b8f9bf",
         intel: "475ec0e4d489d259c30d2ae058832229ad475b96ffba9efe4039fed9307d3f3d"

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

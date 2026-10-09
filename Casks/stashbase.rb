cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.3"
  sha256 arm: "094794e2933e84d985bf1f07bb7ae7ca5b1760326f15f092bf0058cf700a17ab",
         intel: "7e713d61676dc36262c5c592e51636aeb57ebdd784e6722493110a7983cfe7a2"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.9.6"
  sha256 arm: "fa46e814c18ea62a9b55a53e035e62ea8d68824f0539f80e70b23f4071ea1101",
         intel: "a55dd622890fcb3e132e9abcc6f41031627e33a8013ac292e0ddf5cd099ddb13"

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

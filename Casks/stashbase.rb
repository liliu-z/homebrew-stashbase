cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.9.9"
  sha256 arm: "371c6f3fbf3fa970c1db1f35ba766940497694b408d5ecf24ab35d8e091fb096",
         intel: "e50f99741707fa81935f58917a73587919b1bd49dc53a15b6e912fcd287d337f"

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

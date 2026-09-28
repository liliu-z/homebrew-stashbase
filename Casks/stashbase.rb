cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.13.1"
  sha256 arm: "9ae518df5278563d1aa21be3171c34468e0c3819a150d9d5d998f33095997e75",
         intel: "08bce8587ce8752f619358899f5070cb21b8471d28f4c48db344d77751074beb"

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

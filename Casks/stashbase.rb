cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.13.0"
  sha256 arm: "b3108e3471440a94ca748674c82deb66818bcc69ef91d8461b079921434100b7",
         intel: "04e09214f478477f7d94a1cdfd8e8f3a4bb898215ab022938864902cfb11a8de"

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

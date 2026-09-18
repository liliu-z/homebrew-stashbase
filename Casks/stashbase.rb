cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.9.5"
  sha256 arm: "7e50f33517ad5e0bffa0b0d142711126af3f3f356bd3eb4c5fc124c2b5c05c98",
         intel: "268b852f9d6c2e697e0d893611e68650d08a6821a7558b26b7053b8ddd27957b"

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

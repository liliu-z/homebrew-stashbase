cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.1"
  sha256 arm: "b568a7f12f68a01efae6b7289ba5c1392f34809e1ef58d86f7663c916ca774a2",
         intel: "ab18dc522909183222df7a6c20a66603ff984000b3158b440ad39ac83e048355"

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

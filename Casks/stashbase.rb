cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.1"
  sha256 arm: "2ca20f71d4ff3c20d024c6573a332bcffc34c132d4b7cd913b3ed8506b746393",
         intel: "e9f29d07cacc9043e1eb24a1bf2e6d1a78535d504d9e71cacbb3852f2cb6baaf"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.19.2"
  sha256 arm: "d61e0b5eca80b1e005d0ec7e3e13dab2c3be576309291f3e3038863c757a8ecf",
         intel: "deeed76c27f5f10b61ab5c8de6a52f7fcd670754f723b7fca6373008b9e456b2"

  url "https://github.com/liliu-z/stashbase/releases/download/v#{version}/StashBase-#{version}-mac-#{arch}.dmg"
  name "StashBase"
  desc "An open-source, local-first writing workspace. Write with Claude and Codex, drawing on your own sources and past work."
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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.3"
  sha256 arm: "8ab45514f33340b9e959115760af9e246123971fbb5d8e8423bd720c44e5ec06",
         intel: "db6968c19ae4faf6caa42a7e7899a33b72f1c3a13353f6aa8946d6e3e6385368"

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

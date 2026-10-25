cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.17.1"
  sha256 arm: "76a6740ae69b42fcd80ca0523f55e7aafa41e47b55d7e313ae817cd2d1f57669",
         intel: "dc99c246d7aa12a5748ede4a90e333e85574193a37fffe8c36dee3cff8fc2ac4"

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

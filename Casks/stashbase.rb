cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.8"
  sha256 arm: "1dd2831835182349e7d0358665ff3a13f9817a96a98a19cb37f18cd97d66c1b5",
         intel: "8b8354c64a01aad7f25f901ad50709b537070d30eadf897a1cdf9822092c0e41"

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

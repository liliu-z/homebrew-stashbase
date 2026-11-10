cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.12"
  sha256 arm: "46216e7ae1c11fe4a5273a724132bd267c9b97b3066672446dab7538477a5534",
         intel: "cfb49a4ac687dda5b752dd205c08a4f0e137d07dbb85c427f9d0213602ea2e97"

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

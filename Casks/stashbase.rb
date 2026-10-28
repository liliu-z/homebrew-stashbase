cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.18.0"
  sha256 arm: "a4168abcf565a726ba8d311004ed4517501bf674dd9fced8fece307c664b834e",
         intel: "b578290ea6d4645cc575e1eabd4227e69f4edb1fdd5c387213fd3a16d4c5d736"

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

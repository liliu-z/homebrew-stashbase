cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.19.0"
  sha256 arm: "59f4901a5b7764f92fc539c572ca4cc5493dff6e826af710c33a3265379ebd89",
         intel: "21a3d0eda516aa86adc1d0ba5117d0a4305442b480041ec00145c9b5858b7757"

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

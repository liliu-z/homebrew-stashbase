cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.15"
  sha256 arm: "c9cbfc6064497694a940a15d499e14298f4f242f7ef06afa037a9079e48ee3fa",
         intel: "79bed25a29c1cbbbf29fa407f1aba687814fc15c0952165e3dc614f6f3dae78d"

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

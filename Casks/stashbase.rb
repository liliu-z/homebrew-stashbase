cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.9.7"
  sha256 arm: "63b79d54a6cf90dbd7f8caf4eaef48a8902b0e267970a5e3cfaedc3c27cf394d",
         intel: "3bf41517a74695dba155d1a0fc937b7fa3d429a8c5782168a13042b5e26ee558"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.13.2"
  sha256 arm: "d7fa413e284c6174c5d361e08ddcd2ef5a63df7a5b92134a54aba1e1bac2d167",
         intel: "3237ab893b03af52c28e3ded4bf762b0064f19a86b08776002f1ae41e7b02a6d"

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

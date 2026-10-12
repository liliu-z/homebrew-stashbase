cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.9"
  sha256 arm: "919d52b3de599a96c3f5375bd2752e0a4aa18a45ee8fb746305a99fcf704d1b6",
         intel: "da813fc54ffb68f538174716734e181d63770f636b9a6055e68ad09f3d340634"

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

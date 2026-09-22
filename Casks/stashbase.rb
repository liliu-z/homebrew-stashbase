cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.10.0"
  sha256 arm: "b6264725ca96cbcae0784a0402244286a1e80241676f9c5631fa380bd1fa17d2",
         intel: "be64716c6752bf617c6ee6ec588e45fb330edb92938146e3ca4836179c3d043f"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.13"
  sha256 arm: "c801ed795353d2b3ee48827324c7d2a9562fadc6f3f60d1eca2c9e908be25644",
         intel: "02d6c0f660673f06dbfa99213a0b5695788021eae1caa7f378bc527683944a5d"

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

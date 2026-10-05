cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.0"
  sha256 arm: "c1a52a11fa70b6f5afa9420ca1927872df24d468b38575280dc573715ee98058",
         intel: "70847ccdec2abec35c847f9462586e43cc6ca7853a44ad6dbf977151e0af6955"

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

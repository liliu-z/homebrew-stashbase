cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.15.12"
  sha256 arm: "f8d6d619adc2796d466ae15433ab0da1ceecfdc5a67236846416a3cde3cbcd95",
         intel: "13fdccbadabd78539011cc88d0f31820b144b008f4b0d5a99fc223917cd924a4"

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

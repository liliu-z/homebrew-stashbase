cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.14"
  sha256 arm: "a5233aadd422f8c0bf79ea4b8d773beb558aa8e823c2bb9aff40b1860691eff9",
         intel: "eb6a2aeef5437aac6ac50e6aca9d5bba83c57af5cec1bb9447a9a86dc86c7682"

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

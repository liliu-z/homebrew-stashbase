cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.3"
  sha256 arm: "28326e00fe8397640d0638df58b8a4018960bccc2350801403ee0d0950d29c10",
         intel: "dce267124a98c69c8ace6f1adc8573fa507a270903c8f8affe4eff9f2de3bc51"

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

cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.11.0"
  sha256 arm: "9971fe138168863f10ec80997af7efe43fcc03d35a3f1666e86a99db18c66321",
         intel: "5360ad164e94a44efccf2e135ff19c197e9310304c1b74016b621959b8832a08"

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

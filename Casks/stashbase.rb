cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.2"
  sha256 arm: "c4013fb79132886393b97c3ac3f933aebffa272f6373152b8c96e4ab5da86350",
         intel: "88a59f123c0f6b4cbdd8712096453f7e0bffdfdb7e42d03477b9d219901a7c45"

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

cask "stashbase" do
  version "0.3.3"
  sha256 "3ede721deeee1c8dbc274ccb0f923ed825cc9a55641e8ea534b004231d98214c"

  url "https://github.com/liliu-z/stashbase/releases/download/v0.3.3/StashBase-0.3.3-mac-arm64.dmg"
  name "StashBase"
  desc "Local-first knowledge base desktop app."
  homepage "https://github.com/liliu-z/stashbase"

  app "StashBase.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/StashBase.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/StashBase.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/StashBase",
    "~/Library/Preferences/com.stashbase.app.plist",
    "~/Library/Saved Application State/com.stashbase.app.savedState",
  ]
end

cask "stashbase" do
  version "0.6.0"
  sha256 "6ac39466bcf4815c0eb775de27a36ce3bfe29ce150269a7a82be559ca949c9f6"

  url "https://github.com/liliu-z/stashbase/releases/download/v0.6.0/StashBase-0.6.0-mac-arm64.dmg"
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

cask "stashbase" do
  version "0.1.0"
  sha256 "ae1f280b7c0c86ef39432fabca4efc147e3faeeaf5176506c6d539a7ea1c31a0"

  url "https://github.com/liliu-z/stashbase/releases/download/v0.1.0/StashBase-0.1.0-mac-arm64.dmg"
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
    system_command "#{appdir}/StashBase.app/Contents/MacOS/StashBase",
                   args: ["--configure-mcp"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/StashBase",
    "~/Library/Preferences/com.stashbase.app.plist",
    "~/Library/Saved Application State/com.stashbase.app.savedState",
  ]
end

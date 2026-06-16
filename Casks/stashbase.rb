cask "stashbase" do
  version "0.7.1"
  sha256 "0fb259cd8d952165973447b11df699e4e91913ee09a01764bd67ed4a4aca9b6a"

  url "https://github.com/liliu-z/stashbase/releases/download/v0.7.1/StashBase-0.7.1-mac-arm64.dmg"
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

cask "stashbase" do
  version "1.3.2"
  sha256 "84fc241e16b5d3683e1fdc372d9f30853f913c61c1d58ce34f38ed9953b86bb9"

  url "https://github.com/liliu-z/stashbase/releases/download/v1.3.2/StashBase-1.3.2-mac-arm64.dmg"
  name "StashBase"
  desc "Local-first knowledge base desktop app."
  homepage "https://github.com/liliu-z/stashbase"

  app "StashBase.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/StashBase.app"],
                   sudo: true
    system_command "/bin/zsh",
                   args: ["-c", "#!/bin/zsh\nset -euo pipefail\n\nAPP_PATH=\"${1:-}\"\n\nif [[ -z \"$APP_PATH\" || ! -d \"$APP_PATH\" ]]; then\n  echo \"usage: sign-macos-app.sh /path/to/App.app\" >&2\n  exit 2\nfi\n\nsign_one() {\n  local target=\"$1\"\n  local output\n  if output=$(/usr/bin/codesign --force --sign - \"$target\" 2>&1); then\n    return 0\n  fi\n  echo \"[sign-macos-app] codesign failed: $target\" >&2\n  echo \"$output\" >&2\n  return 1\n}\n\nwhile IFS= read -r file; do\n  parent=\"${file:h}\"\n  if [[ \"$parent\" == *.framework && -d \"$parent/Versions\" ]]; then\n    continue\n  fi\n  if /usr/bin/file -b \"$file\" | /usr/bin/grep -q \"Mach-O\"; then\n    sign_one \"$file\"\n  fi\ndone < <(/usr/bin/find \"$APP_PATH\" -type f -print)\n\nwhile IFS= read -r nested_app; do\n  [[ \"$nested_app\" == \"$APP_PATH\" ]] && continue\n  sign_one \"$nested_app\"\ndone < <(/usr/bin/find \"$APP_PATH\" -type d -name \"*.app\" -print | /usr/bin/sort -r)\n\nsign_one \"$APP_PATH\"\n", "sign-stashbase-app", "#{appdir}/StashBase.app"],
                   sudo: true
  end

  zap trash: [
    "~/.stashbase",
    "~/Library/Application Support/StashBase",
    "~/Library/Logs/StashBase",
    "~/Library/Preferences/com.stashbase.app.plist",
    "~/Library/Saved Application State/com.stashbase.app.savedState",
  ]
end

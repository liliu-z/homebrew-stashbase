cask "stashbase" do
  version "0.9.1"
  sha256 "c4dec48ff6e3bb76c5e01fe94caf03c0eb8e870ac32ec6342742caa6b38001c8"

  url "https://github.com/liliu-z/stashbase/releases/download/v0.9.1/StashBase-0.9.1-mac-arm64.dmg"
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

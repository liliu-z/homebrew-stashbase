cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.17.0"
  sha256 arm: "f4c8fef37675d9b57c7609f60ab9558eb432a59dfbb8bbe0124005b3a9064a54",
         intel: "8249cbd897fb5cad4385d8eab438c9a6d77cc88ef2ddc820e0166c323d139627"

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

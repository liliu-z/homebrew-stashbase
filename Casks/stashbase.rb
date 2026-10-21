cask "stashbase" do
  arch arm: "arm64", intel: "x64"
  version "2.16.17"
  sha256 arm: "0290371c535668f08a4bb46dd19c02f1ff396bb6594d6f6c6e266a23a7f09b09",
         intel: "62d23cbfb9a23db97b61df6250d8a57220488e083d987159816b8e09cea6cf89"

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

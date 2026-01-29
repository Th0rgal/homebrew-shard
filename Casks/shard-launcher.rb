cask "shard-launcher" do
  version "0.1.19"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.19/shard-launcher-macos-arm64.dmg"
    sha256 "9483bff6f08bfd649b10377b76a859ef96e0de721d0e2e4a9f071b5ccc236a65"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.19/shard-launcher-macos-x64.dmg"
    sha256 "7b4cbb90a37175022dd38fa1d084683d3e566bc6960ecae43941907ae3aba367"
  end

  name "Shard Launcher"
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"

  app "Shard Launcher.app"

  zap trash: [
    "~/.shard",
    "~/Library/Application Support/md.thomas.shard-launcher",
    "~/Library/Caches/md.thomas.shard-launcher",
    "~/Library/Preferences/md.thomas.shard-launcher.plist",
  ]

  livecheck do
    url :url
    strategy :github_latest
  end
end

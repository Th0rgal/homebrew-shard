cask "shard-launcher" do
  version "0.1.9"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.9/shard-launcher-macos-arm64.dmg"
    sha256 "514dc7f69b5f2b589ddfe32434725f96da4a1163c5e292004521e5aa2f7bd40f"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.9/shard-launcher-macos-x64.dmg"
    sha256 "27eac5b96e6e20e57b2bf0e57f500da2fad89cf76c4f8f3ece6708225ee4e06d"
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

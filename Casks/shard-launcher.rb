cask "shard-launcher" do
  version "0.1.8"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.8/shard-launcher-macos-arm64.dmg"
    sha256 "d44fb29f6eb9c4a9f3e3cd8fa99530fe64cff27f13dd23c4970dce91eef64719"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.8/shard-launcher-macos-x64.dmg"
    sha256 "e72d59e77fdc955193f28395f63a2a5d8df08a668bbedecd708c2d27fba3de89"
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

cask "shard-launcher" do
  version "0.1.24"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.24/shard-launcher-macos-arm64.dmg"
    sha256 "e8b087e7abc0c3b0002af3ad89a9ed7057d6e5544ef65d1af1b43e4d5178562f"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.24/shard-launcher-macos-x64.dmg"
    sha256 "a131b2c4be430018d1b431e45285dbb18b6d8148439cee3e5c6871920548e6b6"
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

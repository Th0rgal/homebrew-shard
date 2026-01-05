cask "shard-launcher" do
  version "0.1.13"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.13/shard-launcher-macos-arm64.dmg"
    sha256 "97d10d97e98372645023a3d9bb1c6e44e7aa252ef3922fcf7b2c3b2ba240ec22"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.13/shard-launcher-macos-x64.dmg"
    sha256 "4a2b490c0d028edfe96769bf774e54e21dda61644b211afd4598147f84089258"
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

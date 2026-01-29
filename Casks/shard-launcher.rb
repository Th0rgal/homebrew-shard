cask "shard-launcher" do
  version "0.1.22"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.22/shard-launcher-macos-arm64.dmg"
    sha256 "5aa7c1c81cd620caf4f8b7187b86cfcbd80c180b974d00882bb450158495d05a"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.22/shard-launcher-macos-x64.dmg"
    sha256 "e0aadb1f790d97ccbb39abdef97b2a9b6dccb7542ae98cc30cbeec66431e7674"
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

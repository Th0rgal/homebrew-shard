cask "shard-launcher" do
  version "0.1.17"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.17/shard-launcher-macos-arm64.dmg"
    sha256 "e64a50f72c5f981aa6dafc679fba5c56d8ee0202d5e2d8cf627052bd503a065b"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.17/shard-launcher-macos-x64.dmg"
    sha256 "8a634b8dbb4e190750c021ddf656b7d3344b9d46caf10ff3b2f72f27d1a24948"
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

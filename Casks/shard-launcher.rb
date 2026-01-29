cask "shard-launcher" do
  version "0.1.23"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.23/shard-launcher-macos-arm64.dmg"
    sha256 "9266b34532dc36fead2c055fb97c6ecc4552d13d97a43e564e151a1eb28c1daa"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.23/shard-launcher-macos-x64.dmg"
    sha256 "8ac469d693b92408a83e3daf4042b73333587c4f98bab2b2e5a22ded6b582209"
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

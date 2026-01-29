cask "shard-launcher" do
  version "0.1.20"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.20/shard-launcher-macos-arm64.dmg"
    sha256 "6cfd98d29f3206808e29bb928486a61016632c8902ca5daffcacc087f60b569e"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.20/shard-launcher-macos-x64.dmg"
    sha256 "b7f7ab5916c90356b1de0c5f9903743df4baeb765b975816d60fa9ff772b910c"
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

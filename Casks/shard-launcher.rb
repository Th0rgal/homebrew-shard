cask "shard-launcher" do
  version "0.1.25"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.25/shard-launcher-macos-arm64.dmg"
    sha256 "edaa491bc75436e7c2164ade7d71c9baf10803b4fb978bde4d48683a6d9ee0fa"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.25/shard-launcher-macos-x64.dmg"
    sha256 "0bf653c588a135e916434ecbf8621e5b25ab520e811ca1d1cc3f1d7fe33495eb"
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

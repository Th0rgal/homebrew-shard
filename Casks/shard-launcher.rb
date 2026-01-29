cask "shard-launcher" do
  version "0.1.18"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.18/shard-launcher-macos-arm64.dmg"
    sha256 "78615b35cab9983794ca781a64c2b4038d17e7e173d2084ba0544d93720660d7"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.18/shard-launcher-macos-x64.dmg"
    sha256 "8535db7867f3ff101fce7aba3cc1008b71ad307f9bad0fd239c29bfd65fc620a"
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

cask "shard-launcher" do
  version "0.1.7"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.7/shard-launcher-macos-arm64.dmg"
    sha256 "29a083a587b6e8eb23cd4ad01a2bab7d53f5e37a3e70fa028bf676381576d151"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.7/shard-launcher-macos-x64.dmg"
    sha256 "6da6f78b3cfe79b34637f6dfda8a20087198acdd56dddb78d2051c5aed8f3880"
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

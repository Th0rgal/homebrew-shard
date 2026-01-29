cask "shard-launcher" do
  version "0.1.21"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.21/shard-launcher-macos-arm64.dmg"
    sha256 "692c611720711b59ead608375b57acb42baa785c5a8decef9801446bcacca462"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.21/shard-launcher-macos-x64.dmg"
    sha256 "c66f4bbaef0857581b0bdde36f5d5c244492c4829fe985d4e0ee59c75d601b6b"
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

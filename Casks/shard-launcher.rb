cask "shard-launcher" do
  version "0.1.14"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.14/shard-launcher-macos-arm64.dmg"
    sha256 "4d8b893076f7c2dc135d1b437222549eaae701c27707b0700e7a1e60fe71d292"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.14/shard-launcher-macos-x64.dmg"
    sha256 "4222e5676b4e7ed566325853dd7f839c5f11933bbe6963846e5f96fee9356ddf"
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

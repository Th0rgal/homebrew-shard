cask "shard-launcher" do
  version "0.1.16"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.16/shard-launcher-macos-arm64.dmg"
    sha256 "fd3a87a4cb06c01af7fb413016aaafca0671a627a2738c77a29d8a83bafae253"
  end

  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.16/shard-launcher-macos-x64.dmg"
    sha256 "fdf49a636ce7fa5dcb2cbdcf97b66db8e23e9ebba6cde41ec6244c9f37e3c493"
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

# typed: false
# frozen_string_literal: true

cask "shard-launcher" do
  version "0.1.3"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-launcher-macos-arm64.dmg"
    sha256 "09b8d46534735fcdccc58093fb66d0a8bc241587f2adfbae9a8ed4e167a82cdb"
  end
  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-launcher-macos-x64.dmg"
    sha256 "4945f8f84073a0efa8ef50120a2d6992769b8d4aa05698ded92ca136c670bafc"
  end

  name "Shard Launcher"
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shard Launcher.app"

  zap trash: [
    "~/.shard",
    "~/Library/Application Support/sh.shard.launcher",
    "~/Library/Caches/sh.shard.launcher",
    "~/Library/Preferences/sh.shard.launcher.plist",
    "~/Library/Saved Application State/sh.shard.launcher.savedState",
  ]
end

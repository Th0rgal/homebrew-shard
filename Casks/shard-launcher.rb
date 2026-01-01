# typed: false
# frozen_string_literal: true

cask "shard-launcher" do
  version "0.1.1"

  on_arm do
    url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-launcher-macos-arm64.dmg"
    sha256 "PLACEHOLDER_SHA256_DMG_ARM64"
  end
  on_intel do
    url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-launcher-macos-x64.dmg"
    sha256 "PLACEHOLDER_SHA256_DMG_X64"
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

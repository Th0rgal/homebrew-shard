# typed: false
# frozen_string_literal: true

class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-cli-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM64"
    end
    on_intel do
      url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-cli-macos-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_X64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-cli-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    end
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

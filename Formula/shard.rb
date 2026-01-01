# typed: false
# frozen_string_literal: true

class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  license "MIT"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-cli-macos-arm64.tar.gz"
      sha256 "78e196ad9e11cfc385712eff24cd3b7bf789745553a1e1f487ec259ab039fe6a"
    end
    on_intel do
      url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-cli-macos-x64.tar.gz"
      sha256 "6aed2dbd97fbbda2d0054dff8e8908e501ada68bbd89cfef2e0d06b91d7b3cc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/th0rgal/shard/releases/download/v#{version}/shard-cli-linux-x64.tar.gz"
      sha256 "94ab0da10122b8f461c2b74fe01df95e539b4f75e39ec6beb8f5fb187f8fed32"
    end
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

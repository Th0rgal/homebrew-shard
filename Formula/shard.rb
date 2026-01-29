class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.24/shard-cli-macos-arm64.tar.gz"
      sha256 "6bf346d1cd53a85bd3f23ff01842f0d672fc5209137fcf6937274b7b532f4b0f"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.24/shard-cli-macos-x64.tar.gz"
      sha256 "110265dd352bb162cdea6ce0f39c5e602656a73d0e46a022252f436c5c12ab47"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.24/shard-cli-linux-x64.tar.gz"
    sha256 "fe4d528b4c9cc375f8302531d6e86adef80029c3ec48488e6f5c95d7d0597f9a"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

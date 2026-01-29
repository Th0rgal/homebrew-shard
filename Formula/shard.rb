class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.19/shard-cli-macos-arm64.tar.gz"
      sha256 "308ba98bdb03aec61319dcf2ff2d891f3dc341ea51fb63e26e2a2d0999b5d391"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.19/shard-cli-macos-x64.tar.gz"
      sha256 "6991df73af54c29128527576321602340c51123b3e0e3c6b1a033c91abe0e6e1"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.19/shard-cli-linux-x64.tar.gz"
    sha256 "b9833a7017a7ade4795d249f0023f4acea2e5bd17b90816164e3995b9a5d0cfe"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

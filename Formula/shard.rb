class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.7/shard-cli-macos-arm64.tar.gz"
      sha256 "c123b1040fd4243b1eb5222b17cbbf66e95c8f5ecd209fc5a90f39b318b282ee"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.7/shard-cli-macos-x64.tar.gz"
      sha256 "94fe5992e2f4c60c933a512a357f45c69143482776bca10c1d3d19eaad137290"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.7/shard-cli-linux-x64.tar.gz"
    sha256 "589681193e8605b6372573b70ce646621dd9505b4d44fcd516faa6bbf1c4f969"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.25/shard-cli-macos-arm64.tar.gz"
      sha256 "b320d4e5d8232f88035d2caa1672c0cbe8820c55876e54bbb7c523919ad010ab"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.25/shard-cli-macos-x64.tar.gz"
      sha256 "cc672420a74b45f0bd44688405a448ad88b3c559066eb29ebf1f4d770749309f"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.25/shard-cli-linux-x64.tar.gz"
    sha256 "7ef97ab3a71a53d3765651947574a100f137280e42b7854ac1314802990ba064"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

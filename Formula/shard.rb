class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.21/shard-cli-macos-arm64.tar.gz"
      sha256 "bd806e5e0c80915658b194d3f37a22217348c8d83f88fdacddcdb527a2afda81"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.21/shard-cli-macos-x64.tar.gz"
      sha256 "b31689600b125b6928972ca50b7462aff555855e6b6c293b25169e16064533b8"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.21/shard-cli-linux-x64.tar.gz"
    sha256 "6981bffd11c2d371ca4302d3f0bf7f4b36d260679e11022800232816aed3935d"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

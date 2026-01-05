class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.14/shard-cli-macos-arm64.tar.gz"
      sha256 "cf64c1372d6b5272ef5e63812ee4ad4348ea4b5fa82fb969323030425b971de1"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.14/shard-cli-macos-x64.tar.gz"
      sha256 "2815d17913a7c7d6746539e7e6161684539f60fadd82cc3b8e6bb0d219e6e709"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.14/shard-cli-linux-x64.tar.gz"
    sha256 "0768546cf9dbf6692561ab963a493506dc6d06737791fd050ed172e15d9d42ff"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

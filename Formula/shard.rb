class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.22/shard-cli-macos-arm64.tar.gz"
      sha256 "b7e04f76d7f37158b5a5cdf7cd7d30fd86a50aae65c032e17547785815233fc6"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.22/shard-cli-macos-x64.tar.gz"
      sha256 "15c081a7b6fe3f0aceddad7f0b533bd53096d6a9e5735ab9fa5728cca6fde38a"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.22/shard-cli-linux-x64.tar.gz"
    sha256 "ac19ecdafe35abb233c561043a21516fc2947b8670a9a9fc417461ab1ab7159a"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

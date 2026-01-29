class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.18/shard-cli-macos-arm64.tar.gz"
      sha256 "16b58953157fe6a45da4e0f9ed1a7a2cc19c2cdedd4992e2412966107678ebbd"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.18/shard-cli-macos-x64.tar.gz"
      sha256 "3f9037857d45cefd8fc585db0192b9ecf214618c822f4b7a3844c777b382ffb0"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.18/shard-cli-linux-x64.tar.gz"
    sha256 "455c77e87a7b513a7439124d6bffbd046e333882da9ddc90a4284a7c2da73409"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.9/shard-cli-macos-arm64.tar.gz"
      sha256 "db4ea9b9ee1d2a46611e5c7c6a84245260024bbcdcbc8793b02e6e6b69f22ae1"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.9/shard-cli-macos-x64.tar.gz"
      sha256 "d34277eaca6e98917ec2aa17e84ad206daeeb78967509a1f1bf040b16e329aa1"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.9/shard-cli-linux-x64.tar.gz"
    sha256 "008d0f5a8acc2f4db82959447f455bead67302f06dc4b412d7246db11b752f14"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

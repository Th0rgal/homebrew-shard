class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.20/shard-cli-macos-arm64.tar.gz"
      sha256 "f85cb3f0637dfdaba381d7d2cffff23b30dcc3ea9b6d60c226a744ffed3939ad"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.20/shard-cli-macos-x64.tar.gz"
      sha256 "1fb1618fb1b2b854fe340bafb70d27583d23cb5d8ae919e712547581c8378b79"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.20/shard-cli-linux-x64.tar.gz"
    sha256 "f39336c4f6acc9647b8714d2f7c33f86d82f12fac621b502b5a1df7a5c66b728"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

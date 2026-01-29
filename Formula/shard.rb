class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.17/shard-cli-macos-arm64.tar.gz"
      sha256 "6ba638932ca7d4a887ef3237060b53eeba220fb486165592a90f8028b8eeca25"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.17/shard-cli-macos-x64.tar.gz"
      sha256 "ca1fd31a7567e9c13a56c815e1463a0a0865a57cd6b0704d767822f1b61a9345"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.17/shard-cli-linux-x64.tar.gz"
    sha256 "bf9986056935776173a6c5a23b74a686afb5e7f76b609b2e14a20dc5edf95018"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

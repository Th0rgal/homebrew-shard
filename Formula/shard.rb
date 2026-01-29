class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.23/shard-cli-macos-arm64.tar.gz"
      sha256 "e38a60b42a04eb911e59c9b9963363f4804aaece738e9d51e40ed1fa7da091db"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.23/shard-cli-macos-x64.tar.gz"
      sha256 "f1f2c7171f9acffc91bf48a5453905aee01dba78c664b2acb6d4a9ea29a1e205"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.23/shard-cli-linux-x64.tar.gz"
    sha256 "26dc1e09f5ba9fad321ea34b3ed1ce12c183a61eb880aca82c77891c55b22182"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.16/shard-cli-macos-arm64.tar.gz"
      sha256 "4f27a5811f1f857965f3b02f9efbd52cc43102b52f5d85b07e83949acc245395"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.16/shard-cli-macos-x64.tar.gz"
      sha256 "49e951283880ea93d48ef3bb12a6dc3f979e3d6ba9deb4938064fb17684d60df"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.16/shard-cli-linux-x64.tar.gz"
    sha256 "78a9af6fd37c1f9b4b89d0f2b533a9878441ff5aaa428477811ae33aace9ccbd"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.13/shard-cli-macos-arm64.tar.gz"
      sha256 "19e8571e3455f1b6f68b10d13f5a96e859b3a4e8cfdffbae326a5ca6d0c448ed"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.13/shard-cli-macos-x64.tar.gz"
      sha256 "ccc95b38219fa87e7b0bd2708b30e6dc9de374a684ffdcf570b24579395b7c32"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.13/shard-cli-linux-x64.tar.gz"
    sha256 "335788ab9cd0d46f188aac452a0df0deeb53be7540b8b6bbef681b0b8105db95"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

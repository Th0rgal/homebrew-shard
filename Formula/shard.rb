class Shard < Formula
  desc "A minimal, content-addressed Minecraft launcher"
  homepage "https://shard.thomas.md"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/th0rgal/shard/releases/download/v0.1.8/shard-cli-macos-arm64.tar.gz"
      sha256 "5a8dc84d9a507fa8c4b707aa72c8711a6ce8b835f2964a48166632086bde3c68"
    else
      url "https://github.com/th0rgal/shard/releases/download/v0.1.8/shard-cli-macos-x64.tar.gz"
      sha256 "84ebdfb3fe4a4eceee94df49f2b11a12cf6a4da2a9cf06cffdd411f4c82f4cfc"
    end
  end

  on_linux do
    url "https://github.com/th0rgal/shard/releases/download/v0.1.8/shard-cli-linux-x64.tar.gz"
    sha256 "83750176c5f403763ef6c0edddb89e8710550d9336c8da078bf240c10792cf2e"
  end

  def install
    bin.install "shard"
  end

  test do
    assert_match "shard", shell_output("#{bin}/shard --version")
  end
end

class Cctree < Formula
  desc "Browse every Claude Code session, running and past, as a folder tree"
  homepage "https://github.com/kateleext/cctree"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.4/cctree_darwin_arm64.tar.gz"
      sha256 "ef74670588ca60b25fab15e6672305e50ad78c64a83ba1531b9228aa5ad7cda4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.4/cctree_darwin_amd64.tar.gz"
      sha256 "b4b8ff00fc992a55d81c4651d7ca0c9554407248f112892449d88351f21a161a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.4/cctree_linux_arm64.tar.gz"
      sha256 "4ce5760e1095993569b36cc5b7f45c13885cc3b0218af39e25be5617a7d47363"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.4/cctree_linux_amd64.tar.gz"
      sha256 "517cd2abfb802abebfc190254bcce1bde43d6529e57a6917cd4c5bc0163169ff"
    end
  end

  def install
    bin.install "cctree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctree --version")
  end
end

class Cctree < Formula
  desc "Browse every Claude Code session, running and past, as a folder tree"
  homepage "https://github.com/kateleext/cctree"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.5/cctree_darwin_arm64.tar.gz"
      sha256 "caabe7117fc319e206fc9a28ae5f986f2180d44d7a1f9a641490b06a2d62017e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.5/cctree_darwin_amd64.tar.gz"
      sha256 "725d404f086c356224d64e7b18210e0099f85e8a9b6c0bb8957e3750ee5a4192"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.5/cctree_linux_arm64.tar.gz"
      sha256 "2df9facc8eed6403d6b7380ea259efe47fec1303840c6776d53eac88c21e3f8a"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.5/cctree_linux_amd64.tar.gz"
      sha256 "c5fdc840d15b24659846c85f1bee56b9cb4d931cd0a069cac2d37d9a16c10a17"
    end
  end

  def install
    bin.install "cctree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctree --version")
  end
end

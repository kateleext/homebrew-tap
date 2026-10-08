class Cctree < Formula
  desc "Browse every Claude Code session, running and past, as a folder tree"
  homepage "https://github.com/kateleext/cctree"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.6/cctree_darwin_arm64.tar.gz"
      sha256 "51a41139a26470f1ebf37a276018a7a54635d4eceb70a4ee6f3c17b3a0c47f78"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.6/cctree_darwin_amd64.tar.gz"
      sha256 "ec30a54a365346d1b9a8e0fdbc0a8e0e1ba03a1360d25832d3876910193824ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.6/cctree_linux_arm64.tar.gz"
      sha256 "b0eef587358dea2b1fdc1fb9d2af3223b56c064953fcccfbb346c58cfc3fca9b"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.6/cctree_linux_amd64.tar.gz"
      sha256 "0bd6983644622cebad13d94e9d4dd3f02f37154b6e2e67d3cf68002f7b681d23"
    end
  end

  def install
    bin.install "cctree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctree --version")
  end
end

class Cctree < Formula
  desc "Browse every Claude Code session, running and past, as a folder tree"
  homepage "https://github.com/kateleext/cctree"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.2/cctree_darwin_arm64.tar.gz"
      sha256 "eccc9e379e424155df2efbbe8cd946c549f53f7dda912ab2ac13422f59170916"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.2/cctree_darwin_amd64.tar.gz"
      sha256 "39b1d2083d36b3b412b0b8739b13ea01efe3fd3486f1ff24093827d704d3666f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.2/cctree_linux_arm64.tar.gz"
      sha256 "37ff1d443a1cfc4c8e93ea4a8016f1c7336f4775ef3aad7e0cf4214800d8cbd8"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.2/cctree_linux_amd64.tar.gz"
      sha256 "6cbfeaf2aa1ce366bbf3083cd2ed4e98793d2d722c8eb41ff2161b93f3e99129"
    end
  end

  def install
    bin.install "cctree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctree --version")
  end
end

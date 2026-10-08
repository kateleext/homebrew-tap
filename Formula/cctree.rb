class Cctree < Formula
  desc "Browse every Claude Code session, running and past, as a folder tree"
  homepage "https://github.com/kateleext/cctree"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.0/cctree_darwin_arm64.tar.gz"
      sha256 "ab5be2c8308668be6b240c620ed278cffdb727ed58b6c1bf95b3cbe007992e11"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.0/cctree_darwin_amd64.tar.gz"
      sha256 "16db364cec8ecf76ca3ea2ce8f02f2b252e1099d1f552a7eb49d25f57ca3b221"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.0/cctree_linux_arm64.tar.gz"
      sha256 "8d718f64ef7f361e615adbfd053703956a47077665dd8b78679a147498d91be5"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.0/cctree_linux_amd64.tar.gz"
      sha256 "de688ef7ccd74207cc826bdcf8e4908d2e7da99fee79a931eeaf6905d90fa05c"
    end
  end

  def install
    bin.install "cctree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctree --version")
  end
end

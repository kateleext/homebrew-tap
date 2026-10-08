class Cctree < Formula
  desc "Browse every Claude Code session, running and past, as a folder tree"
  homepage "https://github.com/kateleext/cctree"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.3/cctree_darwin_arm64.tar.gz"
      sha256 "ef2fe230f534af9f8df40367c13440431327a762decd14e04cc3d4f3611de846"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.3/cctree_darwin_amd64.tar.gz"
      sha256 "ea6250ddd342f31b5feb8c00866c5fa1819b69ddcfc896f2c1a37cf76f5f1673"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.3/cctree_linux_arm64.tar.gz"
      sha256 "0f971eb7c859f5c1346691d111b8928ddc52719beedf12107c1b8858e100a9f9"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.3/cctree_linux_amd64.tar.gz"
      sha256 "ee311ce1da67f4c1c8b9918c0e6ed0def526f7b545473c762ab135b79dd3716e"
    end
  end

  def install
    bin.install "cctree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctree --version")
  end
end

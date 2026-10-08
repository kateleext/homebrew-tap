class Cctree < Formula
  desc "Browse every Claude Code session, running and past, as a folder tree"
  homepage "https://github.com/kateleext/cctree"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.1/cctree_darwin_arm64.tar.gz"
      sha256 "2cf8ce74c1ee89531f19c312eea780e0d19dd8b30bdce14f02cffcfec8d0b752"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.1/cctree_darwin_amd64.tar.gz"
      sha256 "f5101008cf30ed01f9ff2ec77a16feef039a8de54c5c1bffedec9bbb502cb43a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.1/cctree_linux_arm64.tar.gz"
      sha256 "86a205e628e45820bd7171b6cc65366ec3ce74beba41a49488289c753e37a6dc"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/cctree/releases/download/v0.1.1/cctree_linux_amd64.tar.gz"
      sha256 "d34bb642470a36b5793cd1f1dabb96101c0db00cf75dbdb14901dcd3c2df5634"
    end
  end

  def install
    bin.install "cctree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctree --version")
  end
end

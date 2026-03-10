class Perch < Formula
  desc "Minimal file viewer for coding agents"
  homepage "https://github.com/kateleext/perch"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kateleext/perch/releases/download/v0.0.5/perch_darwin_arm64.tar.gz"
      sha256 "efa02c8e8657fa3fe26ac30430adb390dc503b828f1b43d01991be39c3b36f63"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kateleext/perch/releases/download/v0.0.5/perch_darwin_amd64.tar.gz"
      sha256 "f204524d90bd71d927dea3ef8bf475db169230f5d458592431bafb9bd323dc9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/perch/releases/download/v0.0.5/perch_linux_arm64.tar.gz"
      sha256 "404cd6fd949466faa7a54c48de45cf0e24628f939399d631b8ddee983e965b45"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kateleext/perch/releases/download/v0.0.5/perch_linux_amd64.tar.gz"
      sha256 "0fab15f9f5b496e1e753a41c8f425582530426aadc48069f29da3f1c0bd55514"
    end
  end

  def install
    bin.install "perch"
  end
end

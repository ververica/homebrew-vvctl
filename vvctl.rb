class Vvctl < Formula
  version "2026.2.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "® Ververica GmbH 2026"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.9/vvctl-2026.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "337f86e21817c573c2dcdf287404675fb0b1c2f1b294c3318337c9c49e523d75"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.9/vvctl-2026.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "247bad75b0609e199b6fae8656dc9840ea198f05bf92597aea8520ce31de0129"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

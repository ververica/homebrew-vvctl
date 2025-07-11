class Vvctl < Formula
  version "2025.7.8-preview.3"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.8-preview.3/vvctl-2025.7.8-preview.3-aarch64-apple-darwin.tar.gz"
      sha256 "c135a55b69de78f84dd5a82cc83c0f9ee117a86ead1c3a1a8be0598c7d4f2f11"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.8-preview.3/vvctl-2025.7.8-preview.3-x86_64-apple-darwin.tar.gz"
      sha256 "8659aea535551840197d0fb30e4a1369d279883ef16da39d88503a0eb9eb48ab"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

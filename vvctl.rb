class Vvctl < Formula
  version "2026.10.4"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.4/vvctl-2026.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "30eb732997e37a41b76d729c2977b080552a7ce592a686b83bce0aa65ff74938"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.4/vvctl-2026.10.4-x86_64-apple-darwin.tar.gz"
      sha256 "9b6f6883bbf6195e44f314b41442de4f61d24547f7798e85ccfc5541b2824c2b"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

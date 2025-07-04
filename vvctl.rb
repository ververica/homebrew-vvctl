class Vvctl < Formula
  version "2025.7.1-test.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.1-test.1/vvctl-2025.7.1-test.1-aarch64-apple-darwin.tar.gz"
  sha256 "c00072d0b09b3b87a4812800164bed3587692833e7de644292a5853f7f6ef08b"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
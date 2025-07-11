class Vvctl < Formula
  version "2025.7.8"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.8/vvctl-2025.7.8-aarch64-apple-darwin.tar.gz"
  sha256 "7d4d668117fa9e31a2fa81be82f28bb4e2449abd10e9070000b05ea807bcd046"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
class Vvctl < Formula
  version "2025.7.4"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.4/vvctl-2025.7.4-aarch64-apple-darwin.tar.gz"
  sha256 "867186bc40eecfb0f89f0f514aa51e23b149e5e0e71a2471e48268b7241c807d"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
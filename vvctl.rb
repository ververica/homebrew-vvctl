class Vvctl < Formula
  version "2025.7.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.1/vvctl-2025.7.1-aarch64-apple-darwin.tar.gz"
  sha256 "c32c3d26ac95d19c1e6e68fbf7e7a0fc0e0439ed12dc4006513c898d89e69bce"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
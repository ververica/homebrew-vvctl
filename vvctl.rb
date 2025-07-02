class Vvctl < Formula
  version "2025.6.36"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.36/vvctl-2025.6.36-aarch64-apple-darwin.tar.gz"
  sha256 "72525620474df2d23c1824c6cfdf7c839d2f8bc146ff698b1b8c99baf8e5b010"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
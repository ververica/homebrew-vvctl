class Vvctl < Formula
  version "2025.6.29"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.29/vvctl-2025.6.29-aarch64-apple-darwin.tar.gz"
  sha256 "5031ef0cfc016b9e338e60edd149bd549e7d8ad16974198a9fea4462c63d5325"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
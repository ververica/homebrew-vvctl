class Vvctl < Formula
  version "2025.7.3"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.3/vvctl-2025.7.3-aarch64-apple-darwin.tar.gz"
  sha256 "f43a636d087347cd70257bc5581e1957bcda8375ef1d68a0077e27bcaa7d2281"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
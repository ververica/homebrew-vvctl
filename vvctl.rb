class Vvctl < Formula
  version "2025.7.1-preview-1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.1-preview-1/vvctl-2025.7.1-preview-1-aarch64-apple-darwin.tar.gz"
  sha256 "1e9be925462621e7b726f58a088417d805072fe249c120f0a84790916ddf2c70"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
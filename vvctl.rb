class Vvctl < Formula
  version "2025.6.30"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.30/vvctl-2025.6.30-aarch64-apple-darwin.tar.gz"
  sha256 "eb4f62da034820aaec410203dafa8e2b9565bf12ee6663de24f0a0ed33774334"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
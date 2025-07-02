class Vvctl < Formula
  version "2025.6.37"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.37/vvctl-2025.6.37-aarch64-apple-darwin.tar.gz"
  sha256 "177deb72400be01e014400e9339dd139a812c8259a5fb8801364300116810d64"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
class Vvctl < Formula
  version "2025.7.5"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.5/vvctl-2025.7.5-aarch64-apple-darwin.tar.gz"
  sha256 "466ceda224c6a852c7d2f17e442f7744b94eaeae552878328460909cfde5eedf"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
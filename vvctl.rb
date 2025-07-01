class Vvctl < Formula
  version "2025.6.32"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.32/vvctl-2025.6.32-aarch64-apple-darwin.tar.gz"
  sha256 "1e2843f827eecf91c2deb71421c0dcd8c593453c89c89b9cc44970aa83533a25"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
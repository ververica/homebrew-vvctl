class Vvctl < Formula
  version "2025.6.33"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.33/vvctl-2025.6.33-aarch64-apple-darwin.tar.gz"
  sha256 "2f03bbd92f050265dedddbf7ec3607b659a01223a161d24c077ab278e17c95fe"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
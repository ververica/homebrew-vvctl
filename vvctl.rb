class Vvctl < Formula
  version "2025.7.2"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.2/vvctl-2025.7.2-aarch64-apple-darwin.tar.gz"
  sha256 "1b53ba32b665505c12b90fc55a9442349a612b88620536af2af83a8f05d826fe"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
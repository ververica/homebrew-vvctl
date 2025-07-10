class Vvctl < Formula
  version "2025.7.6"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.6/vvctl-2025.7.6-aarch64-apple-darwin.tar.gz"
  sha256 "d7304c7fa39aafb7304b783f105a2f46ce92688b12a5eae212fcfcc80de7237f"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
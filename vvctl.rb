class Vvctl < Formula
  version "2025.6.27"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.27/vvctl-2025.6.27-aarch64-apple-darwin.tar.gz"
  sha256 "108fb0810455a6d31c67ddfb431761bf664a1f13c5b5ce5cd9f1b8c736c1ce0f"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
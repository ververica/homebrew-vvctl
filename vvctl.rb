class Vvctl < Formula
  version "2025.7.10"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.10/vvctl-2025.7.10-aarch64-apple-darwin.tar.gz"
      sha256 "3ad444c401c69cea3577fd74258f913adb5011a337760d2090dbb5f8ca0d749f"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.10/vvctl-2025.7.10-x86_64-apple-darwin.tar.gz"
      sha256 "f29d95e1609d335f9400f58baf57aef232709afc507b4d8b0bb1020191b0ac7b"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

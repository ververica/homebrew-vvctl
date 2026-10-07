class Vvctl < Formula
  version "2026.10.5"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.5/vvctl-2026.10.5-aarch64-apple-darwin.tar.gz"
      sha256 "0f191edebe0d7ebc416fe2698e44640409beb0cf64052bb5dc359bb3d9c2a139"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.5/vvctl-2026.10.5-x86_64-apple-darwin.tar.gz"
      sha256 "3f149b170b615b241522108dac6cea6f5a588eb7ba630ce9ba8c293a92c2d9cd"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

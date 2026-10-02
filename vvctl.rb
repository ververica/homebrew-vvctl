class Vvctl < Formula
  version "2026.10.2"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.2/vvctl-2026.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "f9bc0c5f4646362a1d80f42a7c5c979a9a71ca55e81cbcd9af0cb7e161c7f975"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.2/vvctl-2026.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "cfb05fae2aedede70a2e36dc887cb8413e1824c794feb142aacf9fcb822617b5"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

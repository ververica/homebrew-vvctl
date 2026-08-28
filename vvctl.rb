class Vvctl < Formula
  version "2026.8.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.8.1/vvctl-2026.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "f9d7c63199e80fab0b35ccc0f013b4c860647ae1b28dc69b5519c4a4ba7d9474"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.8.1/vvctl-2026.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "affe18d6656e5654e75a5bad28820e9dc0b2d212d20fb5c78a0aaff4a2bc65b6"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

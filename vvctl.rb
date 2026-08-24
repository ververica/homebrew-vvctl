class Vvctl < Formula
  version "2026.7.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.7.1/vvctl-2026.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "fb0b86e2b1ffca9fdc3ab1c2e05773bcbc7d2e89f816dab2061636a332bb4e1d"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.7.1/vvctl-2026.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "dffae1251d379f77efba7cf1d0f4d5630786b9a12de494ab89804243af897e4d"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

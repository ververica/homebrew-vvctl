class Vvctl < Formula
  version "2026.4.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.4.1/vvctl-2026.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "d6832eb9ade228606d492d3d893aa122a516fa6ef76e6a8d7e41d6e057656343"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.4.1/vvctl-2026.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "18169a14a7342e689388c227fa0ee70746815adb3f976d3d8c2317c88972781f"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

class Vvctl < Formula
  version "2026.10.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.1/vvctl-2026.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "92faa99713a34f23dc0b2eede07e358cf7bbd3a5723b0f751ca8e0c1814bb771"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.1/vvctl-2026.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "b2b8abd1829831ff844e761984fb5005f27f1dad54fa3b85a0f103312fd4eabc"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

class Vvctl < Formula
  version "2026.10.3"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.3/vvctl-2026.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "cdd58049b32f61bae1b05d364262862b119779a346e92fda7a5c59a55609682e"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.10.3/vvctl-2026.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "17e6284c36a08d8ddba5872965c923688bf6ea95097155af88d4331c36992a70"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

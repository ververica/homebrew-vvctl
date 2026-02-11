class Vvctl < Formula
  version "2026.2.2"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.2.2/vvctl-2026.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "70e555de02645ac9c8da852fc55735ace1a29fd8e9b0330343542a7ea5885fef"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.2.2/vvctl-2026.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "fde4e540a8e70ab3a1b429627aeccc2241224b713dba5061d0f6fd49f367a07c"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

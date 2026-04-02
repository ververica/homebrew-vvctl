class Vvctl < Formula
  version "2026.4.2"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Copyright Ververica GmbH 2025"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.4.2/vvctl-2026.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "054b1393bbf5a132abfc58bc4d46f0804f70975d6ab8e78fb07ede4c9ed3bd30"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2026.4.2/vvctl-2026.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "5d4a1f489396fe33f0c37ff4df13fffc9072f06175e3962a9f466ca32a8ec5d9"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

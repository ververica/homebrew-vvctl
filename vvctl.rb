class Vvctl < Formula
  version "2025.6.31"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.6.31/vvctl-2025.6.31-aarch64-apple-darwin.tar.gz"
  sha256 "0f506b0342fc523cd78c71034e713ac3975a373e84156e473e7ae9ddee19500d"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
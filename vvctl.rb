class Vvctl < Formula
  version "2025.7.7"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.7/vvctl-2025.7.7-aarch64-apple-darwin.tar.gz"
  sha256 "cf729d49338eb3cf57c50706416559e3d6cf4594bad69ff3ba6d6f7f036461c0"
  license "Your-License"

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end
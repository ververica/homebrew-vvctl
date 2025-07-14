class Vvctl < Formula
  version "2025.7.9"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.9/vvctl-2025.7.9-aarch64-apple-darwin.tar.gz"
      sha256 "c618d2890373765bc9ae227b06ff15c3a8be3fd970b877d235e506b50287c5ad"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.9/vvctl-2025.7.9-x86_64-apple-darwin.tar.gz"
      sha256 "ed487cda83857c753906a9ca344091aafd1981e09fba1018a9ce2a2659560116"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

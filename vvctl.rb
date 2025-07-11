class Vvctl < Formula
  version "2025.7.8-test.1"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.8-test.1/vvctl-2025.7.8-test.1-aarch64-apple-darwin.tar.gz"
      sha256 "9d436a5e73fe8df209d0ebb80fb528782d00dc7bdede477b9a09fd2868a17155"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.8-test.1/vvctl-2025.7.8-test.1-x86_64-apple-darwin.tar.gz"
      sha256 "c4d9dd7374ae14ea148e212c56b06fed776f08ee3e0514b3274c703437eaa60a"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

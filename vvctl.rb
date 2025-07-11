class Vvctl < Formula
  version "2025.7.8-preview.2"
  desc "CLI application for Ververica Platform"
  homepage "https://app.ververica.cloud/"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.8-preview.2/vvctl-2025.7.8-preview.2-aarch64-apple-darwin.tar.gz"
      sha256 "57646ef92e7ba878c4cd99beef3061ea6246a5e004be0f3b31ab6bbcca71a16c"
    else
      url "https://github.com/ververica/homebrew-vvctl/releases/download/2025.7.8-preview.2/vvctl-2025.7.8-preview.2-x86_64-apple-darwin.tar.gz"
      sha256 "668d5633c88f0125bd3915c3d5f3f17c1737584e7211eabc834f477a73c45e73"
    end
  end

  def install
    bin.install "vvctl"
  end

  test do
    system "#{bin}/vvctl", "--version"
  end
end

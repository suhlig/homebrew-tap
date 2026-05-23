class Dspictl < Formula
  desc "Control DSPi audio devices from the command line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.1.0/dspictl-v1.1.0-darwin-arm64.tar.gz"
  sha256 "481d4e5eeff4abe9ec05e19dbee16f7c57166bfb82576821d6e75b1f1a324f94"
  version "1.1.0"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
  end

  test do
    system "#{bin}/dspictl", "--version"
  end
end

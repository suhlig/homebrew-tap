class Dspictl < Formula
  desc "Control DSPi audio devices from the command line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspi/releases/download/v0.0.0/dspictl-v0.0.0-darwin-arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
  end

  test do
    system "#{bin}/dspictl", "--version"
  end
end

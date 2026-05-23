class Dspictl < Formula
  desc "Control DSPi audio devices from the command line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.0.4/dspictl-v1.0.4-darwin-arm64.tar.gz"
  sha256 "de4204e316080a5cf58de87a13297f18ed4fb4f0891ae73bca35e12d20c72f36"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
  end

  test do
    system "#{bin}/dspictl", "--version"
  end
end

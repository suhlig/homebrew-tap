class Dspictl < Formula
  desc "Control DSPi audio devices from the command line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspi/releases/download/v1.0.2/dspictl-v1.0.2-darwin-arm64.tar.gz"
  sha256 "00fabd340b4719900a0ed8e1681053d944f626043493416738645ae875a8a024"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
  end

  test do
    system "#{bin}/dspictl", "--version"
  end
end

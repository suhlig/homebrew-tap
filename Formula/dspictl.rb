class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.1.1/dspictl-darwin-arm64.tar.gz"
  version "1.1.1"
  sha256 "07386c983721cdc1e46b181553acfad4c4bc9828152701a56bc43ba71c2bd0db"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
  end

  test do
    system bin/"dspictl", "--version"
  end
end

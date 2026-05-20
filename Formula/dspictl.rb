class Dspictl < Formula
  desc "Control DSPi audio devices from the command line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.0.3/dspictl-v1.0.3-darwin-arm64.tar.gz"
  sha256 "3aac168ed5c35056808d31789e94dd8e5ef15918b760bd3649ce811287e81550"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
  end

  test do
    system "#{bin}/dspictl", "--version"
  end
end

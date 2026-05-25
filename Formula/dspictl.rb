class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.2.0/dspictl-darwin-arm64.tar.gz"
  version "1.2.0"
  sha256 "30b165dda29f270e4e3db1db600e6d81090f43550de9ec2c5f0efcdb2b3e972b"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
    generate_completions_from_executable(bin/"dspictl", "completion")
  end

  test do
    system bin/"dspictl", "--version"
  end
end

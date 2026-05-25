class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.2.1/dspictl-darwin-arm64.tar.gz"
  version "1.2.1"
  sha256 "4248344ef84dae2b9052937ad6eb1fed76eaee2d3f32391cf2c5efc959896d7a"
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

class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v2.0.0-rc.2/dspictl-darwin-arm64.tar.gz"
  version "2.0.0-rc.2"
  sha256 "a5f185d1d2f44d2b965fe21a6872480908b82db117488dde6e6b67db21296da0"
  license "MIT"

  depends_on "libusb"

  def install
    bin.install "dspictl"
    generate_completions_from_executable(bin/"dspictl", "completion")

    system bin/"dspictl", "man", "man"
    man1.install Dir["man/*.1"]
  end

  test do
    system bin/"dspictl", "--version"
  end
end

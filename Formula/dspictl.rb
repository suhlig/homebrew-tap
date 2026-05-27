class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.5.0/dspictl-darwin-arm64.tar.gz"
  version "1.5.0"
  sha256 "8a0acac3430b38f83ae926afb9884fa68ef688eb0acca5c6310badd26a03fea5"
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

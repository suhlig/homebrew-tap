class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.3.0/dspictl-darwin-arm64.tar.gz"
  version "1.3.0"
  sha256 "74e906a5162b1ecf6dc2284b84301e02337297c80fa4307ccf0fd4a63234299b"
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

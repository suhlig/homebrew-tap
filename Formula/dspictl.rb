class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.4.0/dspictl-darwin-arm64.tar.gz"
  version "1.4.0"
  sha256 "2513de6dcb8222c777257456876b93cbba5b02fbfc70a6ab16f6d44ce7fd05d5"
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

class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.6.2/dspictl-darwin-arm64.tar.gz"
  version "1.6.2"
  sha256 "ff76f50875024270be781ddd9228155ba41bb96e908bcc12e03ee2f6703148d4"
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

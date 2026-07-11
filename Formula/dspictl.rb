class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v2.0.0-rc.0/dspictl-darwin-arm64.tar.gz"
  version "2.0.0-rc.0"
  sha256 "4cd526ce03e574823d9517824ac9653dde6d4658fa3737ae2074c07a937d167f"
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

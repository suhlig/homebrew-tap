class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v2.0.0-rc.1/dspictl-darwin-arm64.tar.gz"
  version "2.0.0-rc.1"
  sha256 "4785bda7130aa3c7e0eea0477a020ad41e51f9424ff433db1946e7436811252c"
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

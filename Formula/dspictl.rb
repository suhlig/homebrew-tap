class Dspictl < Formula
  desc "Control DSPi audio devices from the command-line"
  homepage "https://github.com/suhlig/dspi"
  url "https://github.com/suhlig/dspictl/releases/download/v1.7.0/dspictl-darwin-arm64.tar.gz"
  version "1.7.0"
  sha256 "eb3ff35455df34194fa174c9383b747e5d1877fd0bf186b4a37b5aa5cdd798c2"
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

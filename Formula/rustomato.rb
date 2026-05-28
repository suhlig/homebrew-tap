class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  license "MIT"
  version "0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suhlig/rustomato/releases/download/v0.0.12/rustomato-darwin-amd64.tar.gz"
      sha256 "84c4650446ea0eb48d3ce1ae55d1537e2fad6d8ea6131af3441a4ef282c93f3d"
    else
      url "https://github.com/suhlig/rustomato/releases/download/v0.0.12/rustomato-darwin-arm64.tar.gz"
      sha256 "46ed1261765bbca74540099147c53723cbcd1a99a204a98ba7feebd7627a9fed"
    end
  end

  def install
    bin.install "rustomato"
  end
end

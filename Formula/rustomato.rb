class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v0.0.12/rustomato-darwin-arm64.tar.gz"
  sha256 "46ed1261765bbca74540099147c53723cbcd1a99a204a98ba7feebd7627a9fed"
  license "MIT"
  version "0.0.12"

  def install
    bin.install "rustomato"
  end
end

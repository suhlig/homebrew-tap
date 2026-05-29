class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v1.1.0/rustomato-darwin-arm64.tar.gz"
  sha256 "797a6c149c6087f5d1a10186ffa0d73d0e96f2f21c71d8ca1d9cd7326e39a571"
  license "MIT"
  version "1.1.0"

  def install
    bin.install "rustomato"
    generate_completions_from_executable(bin/"rustomato", "completions")
  end
end

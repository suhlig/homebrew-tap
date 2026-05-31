class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v2.1.0/rustomato-darwin-arm64.tar.gz"
  sha256 "60019ed45d09807da67b2eae854b2d098c99547613eee1f43b888b3f243fb0e8"
  license "MIT"
  version "2.1.0"

  def install
    bin.install "rustomato"
    generate_completions_from_executable(bin/"rustomato", "completions")
    (man1/"rustomato.1").write Utils.popen_read(bin/"rustomato", "man")
  end
end

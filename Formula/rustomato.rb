class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v2.1.1/rustomato-darwin-arm64.tar.gz"
  sha256 "2b44805dcc638c88bea1d95fbbe877774d39416e87efefa590ed3045d6e2d8e9"
  license "MIT"
  version "2.1.1"

  def install
    bin.install "rustomato"
    generate_completions_from_executable(bin/"rustomato", "completions")
    (man1/"rustomato.1").write Utils.popen_read(bin/"rustomato", "man")
  end
end

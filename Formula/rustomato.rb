class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v1.2.0/rustomato-darwin-arm64.tar.gz"
  sha256 "65de392cf6dbc8acb91871c273a04aa50b01af79596396f784f60faf351f6cb8"
  license "MIT"
  version "1.2.0"

  def install
    bin.install "rustomato"
    generate_completions_from_executable(bin/"rustomato", "completions")
    (man1/"rustomato.1").write Utils.popen_read(bin/"rustomato", "man")
  end
end

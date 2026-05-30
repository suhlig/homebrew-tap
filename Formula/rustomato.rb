class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v2.0.0/rustomato-darwin-arm64.tar.gz"
  sha256 "384543115c36ae599a536069e2d902d908af3fb9cc3b782d4f5086029ad0fb00"
  license "MIT"
  version "2.0.0"

  def install
    bin.install "rustomato"
    generate_completions_from_executable(bin/"rustomato", "completions")
    (man1/"rustomato.1").write Utils.popen_read(bin/"rustomato", "man")
  end
end

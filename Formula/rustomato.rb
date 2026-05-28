class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v0.1.0/rustomato-darwin-arm64.tar.gz"
  sha256 "e44c7950cc04054406cda0d5429a751a93ca25a8f6c280d722a8119734e30a7d"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "rustomato"
    generate_completions_from_executable(bin/"rustomato", "completions")
  end
end

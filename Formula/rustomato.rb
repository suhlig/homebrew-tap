class Rustomato < Formula
  desc "A simple Pomodoro timer for the command line"
  homepage "https://github.com/suhlig/rustomato"
  url "https://github.com/suhlig/rustomato/releases/download/v1.0.0/rustomato-darwin-arm64.tar.gz"
  sha256 "dcecadf63da590d37e3e538172f6c3be25edcb51da7c9750ce9cf72ce3ab7d8a"
  license "MIT"
  version "1.0.0"

  def install
    bin.install "rustomato"
    generate_completions_from_executable(bin/"rustomato", "completions")
  end
end

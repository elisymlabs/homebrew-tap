class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.1"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.1/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "cd0dbcaa19bfdab460a76e71118b13593b48f2d385f59f4ca077c87355786cad"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.1/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c22e4f4fa5241f367af5aee9d35986c30c6e89f20a0ff290c2acacc39362a1b6"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.6"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.6/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "05fd03f95638e1b605a86927ed87cbd93d67619f37c113776ac8072e65edd059"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.6/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9a336e9d838a2ff989199aca5f967c53d67b4c82c050ae8b42e8ead859fe2cdf"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

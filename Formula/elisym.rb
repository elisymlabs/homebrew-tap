class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.3.2"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.3.2/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "b3704505360041a47407d96483d092601e10bae457cfb97b2f97aaec5bfbb824"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.3.2/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0ba48ef670f4582eee1611f03555ba53a78fdd4f51611e5d4c520e3751b08b95"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

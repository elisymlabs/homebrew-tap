class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.7"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.7/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "de8dd24efa051db77965ed60b6370c8876a30a6ce427c058ae767008227e145b"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.7/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "647e7b759868eb11a36ed7aa05aa655dfa11d4d62d9df9be9dc1307e050a3f06"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

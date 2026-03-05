class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.1.1/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "4c21e4da3d4a0143ca91a55432c42a6da784a93638fe8eeb3f6c326df8b426f0"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.1.1/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6f124d198f36fc9fc27f3996c63251e528314cbcdcbdace324f049e3892bdac8"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

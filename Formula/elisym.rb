class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.2/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "bca45eb208eed3f89220149ac199ba7ed1d263b174e4d77ace4f0322f2c8d820"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.2/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a13e63ae5ea81fbeb1aa4a9d2450196c0529f289d1289d2a185296fcb2cccc4f"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

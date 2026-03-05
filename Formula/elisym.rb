class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.0/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "238e18e002e48702b6698b9145214b9e6506ceaf318dedd5be0e8502752516bd"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.0/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6777cdcfc86c4dc06565b08af9bba78eb836ad52d8a3f3cd597f5122dbc1f287"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

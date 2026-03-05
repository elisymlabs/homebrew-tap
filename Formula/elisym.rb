class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.2/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "4a7b38c41c7f0435dcc3ad23bcba964e161e59ec5510bf1f6b4eec11c4dc18e0"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.2/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6a3f3db3ce0ce457f180b779449f6c11a5d58e3d8e95f31a42b56b5f1293dbec"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

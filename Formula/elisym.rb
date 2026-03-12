class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.0/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "e8e8145fee84c1604c3af72d9df6694b4433ca3e80122a870e04ac762641df5e"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.0/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "54fabbc43d051ecd7d08a1f639a30cb0f6be97f5f18a8ba0f13b2e2e6d1f90b9"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

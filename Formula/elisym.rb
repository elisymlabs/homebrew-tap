class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.1.0/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "448bae3a3cf3670d99ad69b0f58f2995d6dba5d0daa08565512550ac57d4a89c"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.1.0/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "35f5d72a7dd2c607cfa3a1d2967aea73013559300fb07bbb4a7eb4521041eeed"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.9"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.9/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "9ed48f79c200c0ae588c022a1557b2abf58cd3fd6d6590d7eb18759b226c9cf1"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.9/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "117a3a3eb8f53f98a4ade88d46bb9347610ceb51adb1ef3b3fcabc1bfe5efe22"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

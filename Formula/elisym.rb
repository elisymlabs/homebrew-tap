class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.8"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.8/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "7c68d6540dc610f5f604f797df8b636ac15805a38f7ba22886d683597e91ea6d"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.8/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4a6d790e4e81d1b0e60595e763b635ddbe7ae86e98bbc2671abaf5b505a1ef07"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

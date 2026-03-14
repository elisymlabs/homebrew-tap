class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.10"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.10/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "828dbea095d9f6af8688a0cf01b498d47ccb13b8d2c0dac27ea1cfb627fec479"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.10/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "03639e315df0623e3b8583aa79f108cd0b7f4481df214d6121ca709a0f384c52"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

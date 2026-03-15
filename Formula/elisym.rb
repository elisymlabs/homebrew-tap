class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.13/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "4c04be188217551c39c6a81a115ab5fc45e8902b66fa837e0985a035004f12b9"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.13/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "c57693a2554a6a4387b810bb1709f1a34b7616f7d8c19ad38f348bd0ab14d7e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.13/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8577e93b96c7411807c01825642d0793d47708f7e0dd67b17c23dacb23c150bd"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.13/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26e1105fc27adeb8af3d3a9227606e3bc791992dbc2d82fe36772836dcb8cc71"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

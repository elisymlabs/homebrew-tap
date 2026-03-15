class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.12/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "bcd3ba0ef8ae24c50381fd45c255b0deaad4d267df53faeef745f3cd94854d93"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.12/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "7e3c99928027adee7d299f9996cc4cf5f79215776e647c348b1f10ce20a25d11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.12/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df0425d4b4380d170aad88502c0b58824a5c3ce6c050ea89655551c89856f5e7"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.12/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4154a9589451fed87f0d97e219c8cf5e8a5591adcdcb7a6d43de7a444acb4c7c"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

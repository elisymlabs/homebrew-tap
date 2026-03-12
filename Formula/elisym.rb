class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.2"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.2/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "d058c58d140d5b0b23275d6565fee5966db1212a16871368b7a4ae22981f6df5"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.2/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "83ecf7b895c70faaf47db8f45eca82ee23f8215914687df360ed31dddc5031aa"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

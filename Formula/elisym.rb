class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.11"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.11/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "c86562c9a0e379c9f5572b310177ba9b12796ac32618a577f669f24f361143b6"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.11/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93b7a5ef2bfbba0ace1e2641005501531c1c81a39595d13c5f5440abe6ea23ae"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

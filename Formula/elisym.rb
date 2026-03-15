class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.19/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "68f4477291986dc915225cb23305f539cd202e29841a6a13e55e58914dc27cdb"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.19/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "5b3b3eed740a451f46c43b0d99d1a61e4fec2c68e69fd7e0d4092f865190517f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.19/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0ee6a756c348f851ac741b0788d1539b0113e9fabc06b4865722303e9e805cf"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.19/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44c91f3e5ca6b6a3147a344c6c4ed196379e5c9acb16167a7cb91a396871daca"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

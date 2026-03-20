class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.3/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "cb19463ba8d0968c6197004418204624ee6d077a8c0a73f97345f1cc0d8f1fd2"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.3/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "e735ba808e712dc23bdb079d8af88fad771de420a9ba9efdabfe6d6063fac086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.3/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0dc09139dcd9d843eafd4ace0d3a5ff522ade80e015b276fb4f953abb03bf69"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.3/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbbeb046c1c1007e1958b56bc514b3a0be6bbe639221f8f3d9b62329f696745a"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

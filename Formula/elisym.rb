class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.16/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "f60c9a30d4a6051311a07f02a2dcd858a8cdc0c698146a015cbdf8572050191b"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.16/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "fa462da65b2f87ba48ad1a86754118ecc25b89fef564795e76be05cd9c158fc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.16/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3d74368a82d8034d897a691d30e8807c01a686828751895929e7b958eca6de9"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.16/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5760e222db36f567ce5e46103c70f60cd7b76b93ee3a24a77c42ae58bc435895"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

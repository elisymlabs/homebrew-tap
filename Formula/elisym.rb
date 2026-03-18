class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.0/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "438798d70deb5ddce5d2c7b9b02dcb2b9b488f45ae537276170fd7435e87d32a"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.0/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "122bc51b4e5f6da2e8629bcea12a0a5d23fd5a9a41b95d942035d0125059dad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.0/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "758683c1da07026944fc8f0d300daaab74bab28beadbea54f967395871fba6e7"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.0/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c32c196875fbf1ad29009c0dac4937092ab79f36c49fe6aa129519bd751f754e"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

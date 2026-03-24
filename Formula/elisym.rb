class Elisym < Formula
  desc "CLI agent runner for elisym"
  homepage "https://github.com/elisymlabs/elisym-client"
  version "v0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.1/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "bfcce22bb2d88baa5349f64ad1c6de20007984599f591856dfdcbed7f7256c6c"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.1/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "7d6a8a5f07a66e7574c573ca6e089247650f06ba67e4e5c870713fbf17e01506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.1/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03c859c29d5b9c6b822c69ab0d83fa7c9fe12d77dbc914d9cea6858bad9b9a51"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.1/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "636b49c6d0497d79a9468c4791204360f404ce12ee6f9700f5b9977bf64cbbee"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

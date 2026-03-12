class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.4"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.4/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "1a5287f58959754721027a04721057a56722e58c3ef9241112ab9e4bd2355465"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.4/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2179cb8fea4d280d08e643a4c5310b3fa40b02424e569c23f61f51349b05080e"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

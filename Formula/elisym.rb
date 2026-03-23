class Elisym < Formula
  desc "CLI agent runner for elisym"
  homepage "https://github.com/elisymlabs/elisym-client"
  version "v0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.0/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "f0b887642425dbfe4f78a26cac23509fac6f7758f4e4a7b4bf6e9cb6383d8305"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.0/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "ebd910d3c9013206f5e28dd1d6e7b959b57c5680e5e5d7682e68f80ff3cd8d05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.0/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56349d26a23ece2f914770a29c06db2e796407b8d58c224781f5f7307dd83f79"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.0/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77eb8c8e7f451785f955686fe5b1e264438eea0e46c84a8d19f9d55ec09ee328"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

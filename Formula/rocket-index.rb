class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.29"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.29/rocketindex-v0.1.0-beta.29-aarch64-apple-darwin.tar.gz"
      sha256 "8e514bce5a8f698cd63b9728caa8b5d941ec9d17765b4c888bdd2b2033b1a048"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.29/rocketindex-v0.1.0-beta.29-x86_64-apple-darwin.tar.gz"
      sha256 "392bbb3a893e17fbe6f18afd1809e8cab29bd2ffa56fccbb66744d35048473a8"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.29/rocketindex-v0.1.0-beta.29-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f4f4a6eb321ad5a0252eb18cf818a1e795449777588682e8a8c8f6a2e8372dc6"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

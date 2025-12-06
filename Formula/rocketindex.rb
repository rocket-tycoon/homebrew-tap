class Rocketindex < Formula
  desc "Rocket-fast polyglot language server and code indexer"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.6"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.6/rocketindex-v0.1.0-beta.6-aarch64-apple-darwin.tar.gz"
      sha256 "dc32a21e91e8657f3431049bc8edded589eb7af5f58388dbf369a80b81ddcb8c"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.6/rocketindex-v0.1.0-beta.6-x86_64-apple-darwin.tar.gz"
      sha256 "ba515338b9ef866459a16c63f1a889287b2183e7dd6ec751612fee2ce8a76428"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.6/rocketindex-v0.1.0-beta.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a0dfe59654fa3f16b7cbc022761fc3dcc65b96331eef67e5a1b92c81e8dd52a6"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

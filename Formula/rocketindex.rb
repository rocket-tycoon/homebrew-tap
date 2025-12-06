class Rocketindex < Formula
  desc "Rocket-fast polyglot language server and code indexer"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.7"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.7/rocketindex-v0.1.0-beta.7-aarch64-apple-darwin.tar.gz"
      sha256 "f1a85125599c9115c7a0f0e7d22971a9c1f1dd4a56230cdaed1665810a5d78b0"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.7/rocketindex-v0.1.0-beta.7-x86_64-apple-darwin.tar.gz"
      sha256 "4ae5720ede2305192e731310a04774a9c19084549a43c199007797f4ed07d3dc"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.7/rocketindex-v0.1.0-beta.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "52bf453f5ac2c6e43a3f95578431cd97ba9c9a5cd9d2e473d03891e272f98eb1"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

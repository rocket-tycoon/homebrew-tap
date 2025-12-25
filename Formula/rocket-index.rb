class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.24"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.24/rocketindex-v0.1.0-beta.24-aarch64-apple-darwin.tar.gz"
      sha256 "b94b454ff1a00e0308e0b1884867119c6daf3dd94aac8c7da2c582ddf3187fa2"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.24/rocketindex-v0.1.0-beta.24-x86_64-apple-darwin.tar.gz"
      sha256 "a2e379d152c321825cff7249f7af8f60fd391400cba8ecb8ebe2a37c5b7d41d1"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.24/rocketindex-v0.1.0-beta.24-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "879f7d5c2880e6ba1ef772c2c8c082bfc66333a0e597009462006d46c51dcbc8"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

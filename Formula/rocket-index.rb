class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.21"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.21/rocketindex-v0.1.0-beta.21-aarch64-apple-darwin.tar.gz"
      sha256 "e2603bab285abb38a3b9a49df90e57834178f87d7a55ef81c9a1e07c48272c22"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.21/rocketindex-v0.1.0-beta.21-x86_64-apple-darwin.tar.gz"
      sha256 "4b557ae661f02b3266cde60a727a97139be2e4fcba8ccc6c6c56a4859d12ba64"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.21/rocketindex-v0.1.0-beta.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9798c12cb93f3ddf92d4318c942e3a2c5d87358342d2062453cc958289ec3d98"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

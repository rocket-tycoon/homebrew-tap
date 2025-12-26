class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.28"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.28/rocketindex-v0.1.0-beta.28-aarch64-apple-darwin.tar.gz"
      sha256 "9336f76ac98c3d5f8bbfde20818c3f36574ca5f094746a60b8ee5006c86e4e3a"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.28/rocketindex-v0.1.0-beta.28-x86_64-apple-darwin.tar.gz"
      sha256 "b459fceb9ce3055e93b2c78dc2d80c83c10e21db378d3d726c35cdd61a7b5df1"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.28/rocketindex-v0.1.0-beta.28-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1a710de34cf6122173b9fa16296af4e225cee4afa1e31178dfc7ecf40a53eafa"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

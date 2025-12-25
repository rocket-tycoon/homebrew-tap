class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.26"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.26/rocketindex-v0.1.0-beta.26-aarch64-apple-darwin.tar.gz"
      sha256 "2fe1de98a87872638ba70097e8cdf293a958840a56d372a6d1e529ce29030af6"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.26/rocketindex-v0.1.0-beta.26-x86_64-apple-darwin.tar.gz"
      sha256 "f81c57da2c4fbffd6bd390b86e01c06f9762f2722457ee7cbde528dbb9d76b52"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.26/rocketindex-v0.1.0-beta.26-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "637b64113193fd452164e5de3d284228c930a31ccc58552100450f7290decbe8"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

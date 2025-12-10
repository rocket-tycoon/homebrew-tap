class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.17"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.17/rocketindex-v0.1.0-beta.17-aarch64-apple-darwin.tar.gz"
      sha256 "699449581f2327d4ddecf6a0f903d9519858ef155f9a5df42db692fe74686dd2"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.17/rocketindex-v0.1.0-beta.17-x86_64-apple-darwin.tar.gz"
      sha256 "73c907ca2e010b83e2b8dbeaa662bc0f49821cbdec9d0f4fc73180476e7d3575"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.17/rocketindex-v0.1.0-beta.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d0518c94731a2ef453ac393ffb548febe640759084237d1ca023591fca5d8697"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

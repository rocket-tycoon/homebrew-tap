class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.30"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.30/rocketindex-v0.1.0-beta.30-aarch64-apple-darwin.tar.gz"
      sha256 "27db817049142bba61335426f84233b47820b52d63da1f0d2d8655009922d3fb"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.30/rocketindex-v0.1.0-beta.30-x86_64-apple-darwin.tar.gz"
      sha256 "6327fb1ca14e78eed87c637dc5cd4ba704c9dff39dc3eccce70da030197705f6"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.30/rocketindex-v0.1.0-beta.30-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "535f87fa11d3a6c1d2bcb5231730a7ca295fc444279af35a12f3c4fb5e159bf7"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

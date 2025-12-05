class Rocketindex < Formula
  desc "Rocket-fast polyglot language server and code indexer"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.3"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.3/rocketindex-v0.1.0-beta.3-aarch64-apple-darwin.tar.gz"
      sha256 "2212914aeac45a45b1c45394f23e1f5dff127344cf413e1db692c0906126d7ea"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.3/rocketindex-v0.1.0-beta.3-x86_64-apple-darwin.tar.gz"
      sha256 "f6a61e917f9ede77a111c8bc796603c471ee08a108f0cb8ef94bc0b801565d40"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.3/rocketindex-v0.1.0-beta.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e55b230319648cc33df7ea42043c32c0e183f48b07435577ea117c3166fab6c7"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

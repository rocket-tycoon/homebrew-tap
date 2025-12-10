class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.19"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.19/rocketindex-v0.1.0-beta.19-aarch64-apple-darwin.tar.gz"
      sha256 "876464b059dfc78f5e383336099d10a4d59df864a81d2f3edf5b9c2500fafdbe"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.19/rocketindex-v0.1.0-beta.19-x86_64-apple-darwin.tar.gz"
      sha256 "81cd9c66b11e3c8ab406394d1537d1bc78ef96dd1bc22b41f91fcf0c860b5478"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.19/rocketindex-v0.1.0-beta.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "12052c10b4b8321ea91305faf1ef7305041bb87a3a929959af1edafa2c3ee2e9"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

class Rocketindex < Formula
  desc "Rocket-fast polyglot language server and code indexer"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.5"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.5/rocketindex-v0.1.0-beta.5-aarch64-apple-darwin.tar.gz"
      sha256 "083d322c3d8e0d756b43d0f26ca168a70202b64c1247bdf721bf3c7709c36580"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.5/rocketindex-v0.1.0-beta.5-x86_64-apple-darwin.tar.gz"
      sha256 "30b6db31bcb1b3bc43e256713e77a6f4681f6ccd26df92840d309942e893ba97"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.5/rocketindex-v0.1.0-beta.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fc38283b76dce7d8127b434dc1a4c177123faf53d7fa890d1a44948c7d6001cb"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

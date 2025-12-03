class Rocketindex < Formula
  desc "Rocket-fast F# language server and code indexer"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.1"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v#{version}/rocketindex-v#{version}-aarch64-apple-darwin.tar.gz"
      # sha256 will be added after first release
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v#{version}/rocketindex-v#{version}-x86_64-apple-darwin.tar.gz"
      # sha256 will be added after first release
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v#{version}/rocketindex-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    # sha256 will be added after first release
  end

  def install
    bin.install "rocketindex"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rocketindex", "--version"
  end
end

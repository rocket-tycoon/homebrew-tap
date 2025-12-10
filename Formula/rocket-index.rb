class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.18"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.18/rocketindex-v0.1.0-beta.18-aarch64-apple-darwin.tar.gz"
      sha256 "368503f5f8db235b4192987ddf7a13eb7670f4177ad05cb81c2f97736d1bacd5"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.18/rocketindex-v0.1.0-beta.18-x86_64-apple-darwin.tar.gz"
      sha256 "ee28399999d3fa8a312ec572f9b2d40730bfedd750329cceec4920b6c52b5419"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.18/rocketindex-v0.1.0-beta.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "53c627e9a79679454cbe84f3f242b192bcefe658bdcb6da1a51971c1255dcbe0"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

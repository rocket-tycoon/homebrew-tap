class RocketIndex < Formula
  desc "Rocket-fast polyglot code indexer for AI coding agents"
  homepage "https://github.com/rocket-tycoon/rocket-index"
  license "MIT"
  version "0.1.0-beta.14"

  on_macos do
    on_arm do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.14/rocketindex-v0.1.0-beta.14-aarch64-apple-darwin.tar.gz"
      sha256 "0aea88e9c4e1421196d82cadd0b0f290b2fb7e646bd695ad2e1cf5c9474fdb34"
    end
    on_intel do
      url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.14/rocketindex-v0.1.0-beta.14-x86_64-apple-darwin.tar.gz"
      sha256 "49b869f86822645445b740ca491d1dda48f364dd024ab01bbb4bda6c4c73e4fa"
    end
  end

  on_linux do
    url "https://github.com/rocket-tycoon/rocket-index/releases/download/v0.1.0-beta.14/rocketindex-v0.1.0-beta.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "715edbac6d43c12c5ec3b9d7ec9f92fdc96ed385e6cbc56bf5da9f1ddd6dea87"
  end

  def install
    bin.install "rkt"
    bin.install "rocketindex-lsp"
  end

  test do
    system "#{bin}/rkt", "--version"
  end
end

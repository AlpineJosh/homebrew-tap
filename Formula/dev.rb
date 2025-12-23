class Dev < Formula
  desc "Git worktree and project management CLI"
  homepage "https://github.com/AlpineJosh/dev-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AlpineJosh/dev-cli/releases/download/v0.1.1/dev-cli-aarch64-apple-darwin.tar.gz"
      sha256 "7b7cfba97462a5dcd4427f2d13ec58f0715aa697b12d3cf9f9c42c95a66fafc8"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    system "\#{bin}/dev", "--version"
  end
end

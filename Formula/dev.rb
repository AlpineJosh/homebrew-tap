class Dev < Formula
  desc "Git worktree and project management CLI"
  homepage "https://github.com/AlpineJosh/dev-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AlpineJosh/dev-cli/releases/download/v#{version}/dev-cli-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    system "#{bin}/dev", "--version"
  end
end

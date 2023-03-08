class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-apple-darwin.tar.gz"
      sha256 "23e9c63eaa750ddaabf553a603bee16f23e3f8363cbff62b61eea1f523e74a29"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-apple-darwin.tar.gz"
      sha256 "bc7ee6bfe0fdbee7b480e80cf3e36cdc3001a75cafc758206e64a525e71ee527"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b8274166f7d486d7267aee87547862c4ce2a9dbacbfacd7134f3d3c526242b7"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2daebbcec740e4d61ec17814f0902a60a2040bd1a43a6b67b44e41947924272"
    end
  end
  def install
    bin.install "numi-cli"
  end
end

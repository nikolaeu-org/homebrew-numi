class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-apple-darwin.tar.gz"
      sha256 "c06aa01ba2031a2136c631e3ac0d7fbb20e75df589ed5c306a6e5c230abe3e6b"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-apple-darwin.tar.gz"
      sha256 "ba7ddafe2e563c307f8ac99b1b783653f5e720df08e0d0b1e0d27dec19eb660c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0396e4dbff5cb882560c6e8cce84d3a3f940ec5ac814b2b8064847e4cc676c6"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "200667dd78b8defb2f3e9564d8a00418f002979d023a50a1380aafe098f1195f"
    end
  end
  def install
    bin.install "numi-cli"
  end
end

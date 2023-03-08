class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-apple-darwin.tar.gz"
      sha256 "4f2af0e98deaf872acacb283ec74dce61971056a1533d8bd6899d5259c478255"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-apple-darwin.tar.gz"
      sha256 "2a68a282dfbce19c52455585fbed77d5e990803e24ecc6fefe075d87a4b19364"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0fb312050e62432103b6c911f1933149add7752ed7c782e35e3f12c7a3bccae"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b7aecea2987b6a243cbf0da314955dc79ee3c698e3d2e64676235d4ae2ae64a"
    end
  end
  def install
    bin.install "numi-cli"
  end
end

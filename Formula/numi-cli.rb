class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.3/numi-cli-v0.3-x86_64-apple-darwin.tar.gz"
      sha256 "d54f7ba943eacd5d09e9b64653263e55b10cbace62df06a6031d9f6f866dc5e0"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.3/numi-cli-v0.3-aarch64-apple-darwin.tar.gz"
      sha256 "0a82fd6e651f8796914ceceac7a0126111cc356c075d5adaf715f0a0758d9aac"
    end
  elsif OS.linux?
    url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.3/numi-cli-v0.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "afc7a648006f80eb0d18ca0030b0a12f69e806d5a25ec3fcad8e35531e9add89"
  end
  def install
    bin.install "numi-cli"
  end
end

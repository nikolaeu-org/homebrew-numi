class Numi < Formula
  desc "Calculator with natural language elements"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.2/numi-cli-v0.2-x86_64-apple-darwin.tar.gz"
      sha256 "29ec2e15e0b651e5a92b7b2d9dd0f3c94560185a2f6e7d79238431fa1e0a832d"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.2/numi-cli-v0.2-aarch64-apple-darwin.tar.gz"
      sha256 "ec447acd0bf07c2ebd43ebdfbc65b3b578e272fa4be57a3c1c37d8a49045d34b"
    end
  elsif OS.linux?
    url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.2/numi-cli-v0.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5fdd52df7aa2ba20d6cb8ca60f36a5c09a49b1605e189deeb4f614f9ff32796c"
  end
  def install
    bin.install "numi-cli"
  end
end

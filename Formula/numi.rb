class Numi < Formula
  desc "Calculator with natural language elements"
  version "0.2"
  homepage "https://numi.app"
  if OS.mac?
    url "https://github.com/nikolaeu-org/numi-app/releases/download/v#{version}/numi-cli-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "ec447acd0bf07c2ebd43ebdfbc65b3b578e272fa4be57a3c1c37d8a49045d34b"
  elsif OS.linux?
    url "https://github.com/nikolaeu-org/numi-app/releases/download/v#{version}/numi-cli-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5fdd52df7aa2ba20d6cb8ca60f36a5c09a49b1605e189deeb4f614f9ff32796c"
  end
  def install
    bin.install "numi-cli"
  end
end

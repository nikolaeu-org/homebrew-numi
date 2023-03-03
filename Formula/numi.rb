class Numi < Formula
  desc "Calculator with natural language elements"
  homepage "https://numi.app"
  url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.2/numi-cli-v0.2-aarch64-apple-darwin.tar.gz"
  sha256 "ec447acd0bf07c2ebd43ebdfbc65b3b578e272fa4be57a3c1c37d8a49045d34b"

  def install
    bin.install "numi-cli"
  end
end

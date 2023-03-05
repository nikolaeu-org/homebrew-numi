class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.3/numi-cli-v0.3-x86_64-apple-darwin.tar.gz"
      sha256 "afb35b51da4d68e476b688a7d4de3d877b17b3e6ccf41d9782dde3a5307fc6bb"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.3/numi-cli-v0.3-aarch64-apple-darwin.tar.gz"
      sha256 "1a90c0746c676606f55f8aa801444790ba612ad95b7fbffdf48ee4ab638c3041"
    end
  elsif OS.linux?
    url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.3/numi-cli-v0.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "174870a87e8117c6753c9606e5fa1307b2136f7ef9c98c02f51696f391b48f8b"
  end
  def install
    bin.install "numi-cli"
  end
end

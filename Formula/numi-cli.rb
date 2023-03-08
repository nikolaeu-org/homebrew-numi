class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-apple-darwin.tar.gz"
      sha256 "6ba46739cafd57adb8f9931a4b7a84895b97363a973ba085b4679622a3d67d64"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-apple-darwin.tar.gz"
      sha256 "8a5a8da9a5f12739c8c53cdbacfd409a97c48b6729795985e6e3d614713c0700"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dca216000e16ed273a054f8a6059291358c1343f03eadd7a640b18ec816f9cc"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu-org/numi-app/releases/download/v0.4/numi-cli-v0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1659b6cbd8c1ff6fdc25f7dce428120de8995e075fee66fbe287667831a78d3"
    end
  end
  def install
    bin.install "numi-cli"
  end
end

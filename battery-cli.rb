class BatteryCli < Formula
  desc "CLI for managing the battery charging status"
  homepage "https://github.com/kevinm6/battery-cli"
  version "1.0.0"
  url "https://github.com/kevinm6/battery-cli/archive/refs/tags/v#{version}.tar.gz"
  sha256 "0ea78a9328b93aa938ceee4f3e7cf31ec39e303a3e0f5e608fe0399a95cfc41b"

  depends_on arch: :arm
  def install
    bin.install "dist/smc"
    bin.install "battery-cli" => "battery"
  end
end

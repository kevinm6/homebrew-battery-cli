class BatteryCli < Formula
  desc "CLI for managing the battery charging status"
  homepage "https://github.com/kevinm6/battery-cli"
  version "1.0.1"
  url "https://github.com/kevinm6/battery-cli/archive/refs/tags/v#{version}.tar.gz"
  sha256 "a229ae8e930a3671473572f34b980daab74539322d8f94beac740ea7d469a95b"

  depends_on arch: :arm
  def install
    bin.install "dist/smc"
    bin.install "battery-cli" => "battery"
  end
end

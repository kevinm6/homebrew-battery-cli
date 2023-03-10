class BatteryCli < Formula
  desc "CLI for managing the battery charging status"

  homepage "https://github.com/kevinm6/battery-cli"
  url "https://github.com/kevinm6/battery-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "184253c85b5bc90e971f98c74db519cf8960307d713ede34b23035757a3e5a9c"
  # version "v1.0.2"
  license "MIT"

  head "https://github.com/kevinm6/battery-cli.git", branch: "main"

  conflicts_with cask: "battery", because: "both install binaries that can interfere"

  on_macos do
    on_arm do
      url "https://github.com/kevinm6/battery-cli/archive/refs/tags/v1.0.2.tar.gz"
      sha256 "184253c85b5bc90e971f98c74db519cf8960307d713ede34b23035757a3e5a9c"

      def install
        bin.install "dist/smc"
        bin.install "battery-cli" => "battery"
      end
      # def install
      #   system "./setup.sh", *std_configure_args, "--disable-silent-rules"
      # end
    end
  end

  test do
    system "false"
    # assert_not_equal  system bin/"battery-cli", ""
  end
end

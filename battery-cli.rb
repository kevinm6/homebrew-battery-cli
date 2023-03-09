class BatteryCli < Formula
  desc "CLI for managing the battery charging status"

  homepage "https://github.com/kevinm6/battery-cli"
  url "https://github.com/kevinm6/battery-cli/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "9ba8f211722fa541dbe5ff56d891a69e048ca8abd493f7fd4a0fbe083d872876"
  license "MIT"

  head "https://github.com/kevinm6/battery-cli.git", branch: "main"

  depends_on "cmake" => :build
  depends_on "nyx"

  def install
    system "./setup.sh", *std_configure_args, "--disable-silent-rules"
  end

  test do
    system "false"
  end
end

class Cftail < Formula
  desc "Tail CloudFormation deploys"
  homepage "https://gitlab.com/srwalker101/cftail"
  url "https://github.com/mindriot101/cftail/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "f4a86fe2b796168b5bff35324cae4b52f82470027edef0f0c993b44f9145d43d"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cftail", "-h"
  end
end

class Cftail < Formula
  desc "Tail CloudFormation deploys"
  homepage "https://gitlab.com/srwalker101/cftail"
  url "https://github.com/mindriot101/cftail/archive/refs/tags/v0.7.0.zip"
  version "0.7.0"
  sha256 "03c1f9204e99987e95a565a4a5e8c9e69adfa3e7d2bfd4ad506e0e3e02143e9c"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/program", "-h"
  end
end

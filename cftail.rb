class Cftail < Formula
  desc "Tail CloudFormation deploys"
  homepage "https://gitlab.com/srwalker101/cftail"
  url "https://github.com/mindriot101/cftail/archive/refs/tags/v0.4.0.zip"
  version "0.4.0"
  sha256 "1caf6db865c9623e34c07cb56181ee5b342729a17619191151727976f3f0b091"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/program", "-h"
  end
end

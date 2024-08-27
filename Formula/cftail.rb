class Cftail < Formula
  desc "Tail CloudFormation deploys from the command-line"
  homepage "https://gitlab.com/srwalker101/cftail"
  url "https://github.com/mindriot101/cftail/archive/refs/tags/v0.9.2.tar.gz"
  sha256 "37a9f034948feabd66838334f43e7f50593ad2d41f004b1c152f69611fbe21e1"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cftail", "-h"
  end
end

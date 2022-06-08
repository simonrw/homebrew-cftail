class Cftail < Formula
  desc "Tail CloudFormation deploys"
  homepage "https://gitlab.com/srwalker101/cftail"
  url "https://github.com/mindriot101/cftail/archive/refs/tags/v0.6.1.zip"
  version "0.6.1"
  sha256 "e8ea1f182328201d5b2c6dec848a665199cf991aaefebd5c0a7e61f93614bbea"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/program", "-h"
  end
end

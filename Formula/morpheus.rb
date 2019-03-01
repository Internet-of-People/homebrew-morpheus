require 'etc'

class Morpheus < Formula
  desc "IoP Morpheus demo"
  homepage "https://iop.global/"
  url "https://github.com/Internet-of-People/homebrew-morpheus/raw/master/Releases/morpheus-0.1.tar.gz"
  sha256 "dc88c1a01dcea1a5f14b25f3ec733f42614b7b006d0657a9b83aa9dde229f14e"
  depends_on "botan"
  depends_on "open-scene-graph"
  depends_on "rocksdb"
  depends_on "scons"

  def install
    system "scons", "-j#{Etc.nprocessors}"

    bin.install "target/morpheusd"
    bin.install "target/morpheus-crawler"
    bin.install "target/morpheus-test"
  end

  test do
    system "target/morpheus-test"
  end
end

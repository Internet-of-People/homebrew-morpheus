require 'etc'

class Morpheus < Formula
  desc "IoP Morpheus demo"
  homepage "https://iop.global/"
  url "https://github.com/Internet-of-People/homebrew-morpheus/raw/master/Releases/morpheus-0.1.tar.gz"
  sha256 "953c1f54676b7d00c9912f18484531ef08539b5a1e0c2f31e8c197a4510b5145"
  depends_on "botan"
  depends_on "open-scene-graph"
  depends_on "rocksdb"
  depends_on "scons"

  def install
    system "scons", "#{Etc.nprocessors}"

    bin.install "target/morpheusd"
    bin.install "target/morpheus-crawler"
    bin.install "target/morpheus-test"
  end

  test do
    system "target/morpheus-test"
  end
end

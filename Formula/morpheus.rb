class Morpheus < Formula
  desc "IoP Morpheus demo"
  homepage "https://iop.global/"
  url "https://github.com/Internet-of-People/homebrew-morpheus/raw/master/Releases/morpheus-0.1.tar.gz"
  sha256 "297d050dd7da52712807d5b3b32235434b65a5f9980aef98ed122464db8bf5d0"
  depends_on "botan"
  depends_on "open-scene-graph"
  depends_on "rocksdb"
  depends_on "scons"

  def install
    system "scons"

    bin.install "target/morpheusd"
    bin.install "target/morpheus-crawler"
    bin.install "target/morpheus-test"
  end

  test do
    system "target/morpheus-test"
  end
end

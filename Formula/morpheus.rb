class Morpheus < Formula
  desc "IoP Morpheus demo"
  homepage "https://iop.global/"
  url "https://github.com/Internet-of-People/homebrew-morpheus/raw/master/Releases/morpheus-0.1.tar.gz"
  sha256 "f149d1ace19248efca5f04c3514ca8ae9599fd80b29761b175d8f451113de204"
  depends_on "botan"
  depends_on "open-scene-graph"
  depends_on "rocksdb"
  depends_on "scons"

  def install
    system "scons"

    bin.install "target/morpheusd"
    bin.install "target/visualization"
  end

  test do
    system "target/test"
  end
end

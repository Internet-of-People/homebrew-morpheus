class Morpheus < Formula
  desc "IoP Morpheus demo"
  homepage "https://iop.global/"
  url "https://github.com/Internet-of-People/homebrew-morpheus/blob/master/Releases/morpheus-0.1.tar.gz"
  sha256 "029a9c458f64a33cfd3be740998573ee935c717471861c38068b3d4824b2faac"
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

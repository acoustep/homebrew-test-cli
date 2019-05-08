class TestCli < Formula
  desc "Test CLI"
  homepage "https://www.fullstackstanley.com/"
  url "https://github.com/acoustep/test_cli/archive/v1.0.2.tar.gz"
  sha256 "6f2d694fdb0085a88a3b459ab41025ce608b9f1329d308dbe1c5d62bfae2b81e"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/test_cli")
    assert_match "Hello World", output
  end
end

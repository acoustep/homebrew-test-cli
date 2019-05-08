class Amber < Formula
  desc "Test CLI"
  homepage "https://www.fullstackstanley.com/"
  url "https://github.com/acoustep/test_cli/archive/v1.0.1.tar.gz"
  sha256 "1edd4991a744ef3931c007ff63d89242b9da80357cda5dee0c6e605d362201e7"

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

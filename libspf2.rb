require "formula"

class Libspf2 < Formula
  homepage "http://www.libspf2.org"

  # we use our own for until issue #4 is fixed
  # see: https://github.com/shevek/libspf2/issues/4
  #
  # archive: http://www.libspf2.org/spf/libspf2-1.2.10.tar.gz
  #
  url "https://github.com/eaigner/libspf2-1.git"

  depends_on "bind"

  def install
    system "./configure", "--with-bind=/usr/local",
                          "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"

    system "make install"
  end

  test do
    system "true"
  end
end

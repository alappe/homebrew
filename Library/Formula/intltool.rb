require 'formula'

class Intltool < Formula
  homepage 'http://www.freedesktop.org/wiki/Software/intltool'
  url 'http://launchpad.net/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz'
  sha1 '7fddbd8e1bf94adbf1bc947cbf3b8ddc2453f8ad'

  # Even though this module is supposed to be there on Snow Leopard,
  # I've run into a situation where it isn't, and we have gotten other
  # reports of it happening. So, adding it here just to be safe.
  # @adamv
  depends_on 'XML::Parser' => :perl

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end

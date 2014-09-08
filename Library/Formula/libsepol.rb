require "formula"

class Libsepol < Formula
  homepage "http://userspace.selinuxproject.org/"
  url "http://userspace.selinuxproject.org/releases/20140506/libsepol-2.3.tar.gz"
  sha1 "efbc0a7d8277fc8bbb63824fdc10020278083c7f"

  def install
    system "make", "install", "PREFIX=#{prefix}", "SHLIBDIR=#{lib}",
      "MAN3DIR=#{man3}", "MAN8DIR=#{man8}"
  end

  test do
    system "#{bin}/chkcon |grep chkcon"
  end
end

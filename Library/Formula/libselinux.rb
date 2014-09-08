require "formula"

class Libselinux < Formula
  homepage "http://userspace.selinuxproject.org/"
  url "http://userspace.selinuxproject.org/releases/20140506/libselinux-2.3.tar.gz"
  sha1 "14669a7119a314c91754e7c1c6ae2ff1103aba9f"

  depends_on "libsepol"

  def install
    system "make", "install", "PREFIX=#{prefix}", "SHLIBDIR=#{lib}",
      "MAN3DIR=#{man3}", "MAN5DIR=#{man5}", "MAN8DIR=#{man8}"
  end

  test do
    system "#{sbin}/getseuser 2>&1 |grep getseuser"
  end
end

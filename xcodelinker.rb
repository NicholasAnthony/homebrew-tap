class Xcodelinker < Formula
  desc "xcodeliner script."
  homepage "https://github.com/nicholasanthony/xcodelinker"
  url "https://github.com/nicholasanthony/xcodelinker/raw/master/xcodelinker-1.0.tar.gz"
  sha256 "8443118e257c4c109332ae58df932da99f3bd1291a67b8a8a0283f529bc4f48e"
  version "1.0"

  def install
    # install xcodelinker script, create symlink to script in /usr/local/bin
    bin.install "xcodelinker"
  end

  test do
    # test script output
    assert_equal %x('#{bin}/xcodelinker'), "Hello world!\n"
  end
end

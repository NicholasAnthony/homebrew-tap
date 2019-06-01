
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Xcodelinker < Formula
  desc "xcodeliner script."
  homepage "https://github.com/nicholasanthony/xcodelinker"
  url "https://github.com/NicholasAnthony/XCodeLinker/blob/master/xcodelinker-1.0.tar.gz"
  sha256 "7c4df028b30a393b1124a0805ab7cc48735d00d02647b6c3611791737777b17c"
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "ln -s /Applications/Xcode-10.1.app /Applications/XCode.app"
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
    bin.install "xcodelinker"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test xcodelinker`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end


# class Xcodelinker < Formula
#   desc "xcodeliner script."
#   homepage "https://github.com/nicholasanthony/xcodelinker"
#   url "https://github.com/NicholasAnthony/XCodeLinker/blob/master/xcodelinker-1.0.tar.gz"
#   sha256 "b07b15b7022895cd6ab65a902f64ccbd25907c716733ef6f3f1da9fd0d9c9228"
#   version "1.0"

#   # def install
#   #   # install xcodelinker script, create symlink to script in /usr/local/bin
#   #   bin.install "xcodelinker"
#   # end

#   def install
#     # ENV.deparallelize  # if your formula fails when building in parallel
#     # Remove unrecognized options if warned by configure
#     system "./configure", "--disable-debug",
#                           "--disable-dependency-tracking",
#                           "--disable-silent-rules",
#                           "--prefix=#{prefix}"
#     # system "cmake", ".", *std_cmake_args
#     system "make", "install" # if this fails, try separate make/make install steps
#   end

#   test do
#     # test script output
#     # assert_equal %x('#{bin}/xcodelinker'), "Hello world!\n"
#   end
# end


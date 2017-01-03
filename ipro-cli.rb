class IproCli < Formula
  desc "iproto cli tools"
  homepage "https://github.com/mailru/ipro-cli"
  url "https://github.com/mailru/ipro-cli/archive/v0.1.tar.gz"
  version "0.1"
  sha256 "365b3d17ea4d91aa36d1deb59831271e166d97710d1c1576b9274a631e8b4f25"

  depends_on "cmake" => :build

  def install
    args = std_cmake_args

    system "cmake", ".", *args
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end

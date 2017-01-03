class IproCli < Formula
  desc "iproto cli tools"
  homepage "https://github.com/mailru/ipro-cli"
  url "https://github.com/mailru/ipro-cli/archive/v0.2.tar.gz"
  version "0.2"
  sha256 "ccd198bdb446d58e283fb840dfd5f85c00f667d2063810bf5f50db90acdb7cd5"

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

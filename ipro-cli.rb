class IproCli < Formula
  desc "iproto cli tools"
  homepage "https://github.com/mailru/ipro-cli"
  url "https://github.com/mailru/ipro-cli/archive/v0.3.tar.gz"
  version "0.3"
  sha256 "2dcbf8b17972a9b31ad5334a643a568866312cecff129b74ba7f1a57b030a384"

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

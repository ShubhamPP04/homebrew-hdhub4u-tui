class Hdhub4uTui < Formula
  VERSION = "0.1.14"
  MACOS_SHA256 = "34ae6afa1425947cd1710e6eef5b444c7b7f4030d702eb32ff6bfc701b7b963c"
  LINUX_X64_SHA256 = "3f2440c508e9cf4a3cf4d4c92c44f977e42fec87cc2346674ab9068a742bab5b"
  LINUX_ARM64_SHA256 = "a5ce35e096b1ace7fd0e3930875b7028fe8224b80a8bffd34a27eddfbebb80e1"

  desc "Terminal client for streaming movies and TV shows from HDHub4u and other sources"
  homepage "https://github.com/ShubhamPP04/hdhub4u-tui"
  version VERSION
  license "MIT"

  on_macos do
    url "https://github.com/ShubhamPP04/hdhub4u-tui/releases/download/v#{VERSION}/hdhub4u_macOS_Universal.tar.gz"
    sha256 MACOS_SHA256
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShubhamPP04/hdhub4u-tui/releases/download/v#{VERSION}/hdhub4u_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/ShubhamPP04/hdhub4u-tui/releases/download/v#{VERSION}/hdhub4u_Linux_x64.tar.gz"
      sha256 LINUX_X64_SHA256
    end
  end

  def install
    bin.install "hdhub4u-tui"
  end

  def test
    system "#{bin}/hdhub4u-tui", "--version"
  end
end

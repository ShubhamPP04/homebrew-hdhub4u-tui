class Hdhub4uTui < Formula
  VERSION = "0.1.8"
  MACOS_SHA256 = "276fac1fdb2213ee693ec2d9b8cc90eaf8db17d99d87015e94174ab1c417dbf3"
  LINUX_X64_SHA256 = "eeacb42df0bbc489c519337c98dca541f1db7f3fafc3ceffae064c2d06d767a8"
  LINUX_ARM64_SHA256 = "094ea3e4cd8dc5be9ea50dc83191650a6397f287c73d5e492d47db995381a097"

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

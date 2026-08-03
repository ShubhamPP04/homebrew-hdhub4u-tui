class Hdhub4uTui < Formula
  VERSION = "0.1.9"
  MACOS_SHA256 = "4d3183eb4f71b1a5bffe335c3f3a03ff72e16887af3d1428afea564e945e2206"
  LINUX_X64_SHA256 = "63cf072e01acc2b3ff44d50ba4344bbd1faa4aa84d7bf61b6e43ffd7d32eeda6"
  LINUX_ARM64_SHA256 = "de9eccb0704ae15bbda450fe58cbecde57746af12dd5173a7d67b4f761a82e6a"

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

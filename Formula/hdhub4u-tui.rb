class Hdhub4uTui < Formula
  VERSION = "0.1.13"
  MACOS_SHA256 = "e0d910059527bb43a1879f1d1913d0bc84b8c6ac1104c371fc5e44c819770d7e"
  LINUX_X64_SHA256 = "587e10460dde00eab3ee0ced1e82f34108ee410470c88396223766fa8aa7794f"
  LINUX_ARM64_SHA256 = "58f0345fe201aa46f08a4d16c30c8191387911853179285ad1ec60b47781e138"

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

class Hdhub4uTui < Formula
  VERSION = "0.1.11"
  MACOS_SHA256 = "e6baeab8fea86a02a5e8075c00e56da4a1b0eb523eaa0687aeac87bac76dd79f"
  LINUX_X64_SHA256 = "9eb8fdc5ba1dd68964f4de8c6f629918cc9a8d7f54ed7392b316466abeec26de"
  LINUX_ARM64_SHA256 = "adbc082837cb1cfa0359dfb04ee08d2b775e87e72b0f916c23411caff14a4bd3"

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

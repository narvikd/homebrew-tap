class ReactCli < Formula
  desc "RC is an Angular like CLI tool for React"
  homepage "https://github.com/narvikd/rc"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/narvikd/rc/releases/download/v0.0.3/rc_darwin-amd64.tar.gz"
      sha256 "fa82503c443d6bd4297334a12d430c7ec9d7364c57ef403483d404564c44e5b6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/narvikd/rc/releases/download/v0.0.3/rc_darwin-arm64.tar.gz"
      sha256 "230cf25270493eeeb6ea0344c2dea90127c597c007adf35b354a0d72058648fb"
    end
  end

  def install
    bin.install "rc"
  end

  test do
    system(`"#{bin}/rc", "-v"`)
  end
end
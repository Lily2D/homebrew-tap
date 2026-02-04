class Lily < Formula
  desc "Lily Game Engine"
  homepage "https://github.com/lily2d/lily2d"
  license "MIT"

  version "0.3.0"

  on_linux do
    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-linux-x86_64.tar.gz"
      sha256 ""
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-arm64.tar.gz"
      sha256 "80a8b1db708477641643cb948202e721a352f165a6d87c329874bf8aef65e789"
    end

    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-x86_64.tar.gz"
      sha256 "013b6050ae28bd1e4932943d428f26ccf6f7c13e0961cde22a92b7c8b7bff0c9"
    end
  end



  def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "lily-#{os}-#{arch}" => "lily"
  end

  #test do
    # verify the version of the binary
  #  assert_match "lily v#{version}", shell_output("#{bin}/lily help")
  #end
end

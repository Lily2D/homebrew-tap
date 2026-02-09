class Lily < Formula
  desc "Lily Game Engine"
  homepage "https://github.com/lily2d/lily2d"
  license "MIT"

  version "0.3.3"

  on_linux do
    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-linux-x86_64.tar.gz"
      sha256 ""
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-arm64.tar.gz"
      sha256 "f342815e5250dfe814c51a293daefe1db3144983fbc74082aef01221b3af1036"
    end

    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-x86_64.tar.gz"
      sha256 "d3695be8a8ca3800c20014d33762c9230db501b37bcb6b862e37efd50920c191"
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

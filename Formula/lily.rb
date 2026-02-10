class Lily < Formula
  desc "Lily Game Engine"
  homepage "https://github.com/lily2d/lily2d"
  license "MIT"

  version "0.3.4"

  on_linux do
    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-linux-x86_64.tar.gz"
      sha256 ""
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-arm64.tar.gz"
      sha256 "551e90dd2881192d5cc513a34344f88edf81081b98d58ad54ba32cf7af082461"
    end

    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-x86_64.tar.gz"
      sha256 "b5d6a85b742f0388b0fa07c200bb0aab5187f2c35d20a474b06f8f074682364c"
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

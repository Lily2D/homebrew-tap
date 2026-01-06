class Lily < Formula
  desc "Lily Game Engine"
  homepage "https://github.com/lily2d/lily2d"
  license "MIT"

  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-arm64.tar.gz"
      sha256 "f33480112d9b7893161880c21b7535a7a1d0e36c18441eeb8d847e778762bfd3"
    end

    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-x86_64.tar.gz"
      sha256 "sha256:1c644af06e8b47d73b4a5a9de1d000bb3541d142b1947fa98c0b7a1eddc6914e"
    end
  end

  def install
    os_arch = Hardware::CPU.arm? ? "arm64" : "x86_64"

    # version is not part of the executable inside the .tar.gz
    binary_name = "lily-macos-#{os_arch}"

    bin.install binary_name => "lily"
  end

  test do
    # verify the version of the binary
    assert_match "lily v#{version}", shell_output("#{bin}/lily help")
  end
end

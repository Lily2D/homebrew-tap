class Lily < Formula
  desc "Lily Game Engine"
  homepage "https://github.com/lily2d/lily2d"
  license "MIT"

  version "0.3.2"

  on_linux do
    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-linux-x86_64.tar.gz"
      sha256 "af0ffa3a167f47d933b6e1ec14decbe614d839514d42578eeb7be82c2c46ef9e"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-arm64.tar.gz"
      sha256 "1a284149431b3d7803f3420e270463be93935b8ea17b3191a3d313a7cab7ce4d"
    end

    on_intel do
      url "https://github.com/lily2d/lily2d/releases/download/v#{version}/lily-#{version}-macos-x86_64.tar.gz"
      sha256 "e459751cb691cca69c611463fc1d24bfd633a350fcae35f49a45c7e54247a722"
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

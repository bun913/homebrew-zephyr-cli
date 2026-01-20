class Zephyr < Formula
  desc "CLI tool for Zephyr Scale API"
  homepage "https://github.com/bun913/zephyr-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-arm64"
      sha256 "218397af663b711a933a55ab7b2ad0457d1449946d800fc5a83cdb3a1d978842"
    end
    on_intel do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-x64"
      sha256 "da3f5e8de82f3d2d73bbf582d85f153471e3d9d0691d9cdd8ad84dc8b3caef2a"
    end
  end

  on_linux do
    url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-linux-x64"
    sha256 "38258bc33a2fc79bf517f1addd11f6f90b299d515b675627c37619252d30889a"
  end

  def install
    bin.install Dir["*"].first => "zephyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zephyr --version")
  end
end

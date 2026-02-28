class Zephyr < Formula
  desc "CLI tool for Zephyr Scale API"
  homepage "https://github.com/bun913/zephyr-cli"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-arm64"
      sha256 "2a6ee0ed7d8c4ab31f2dca25d61b81b3508703eafbdef0d6d2a1dd2d2b884fa6"
    end
    on_intel do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-x64"
      sha256 "68dfc60f043ca79294bd1f0bdcd9f49d28e797551761d84d4570fc00c9376151"
    end
  end

  on_linux do
    url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-linux-x64"
    sha256 "7ecc04b0e81e5cb116791c7037267ad7b9368ba33cd454b1188bd3915f9880f9"
  end

  def install
    bin.install Dir["*"].first => "zephyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zephyr --version")
  end
end

class Zephyr < Formula
  desc "CLI tool for Zephyr Scale API"
  homepage "https://github.com/bun913/zephyr-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-arm64"
      sha256 "5d2e8ae6e3cc77527e180a5a90ed7faff726850525ee9aff59b552dab09d661b"
    end
    on_intel do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-x64"
      sha256 "7adb12e3d6f2d265795c2e757fc74f379f517b6118a59ec7541061cbe8deeff6"
    end
  end

  on_linux do
    url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-linux-x64"
    sha256 "eb6d4555b1cf9b9f39d631ba5e9eda185fe2d663a48ed99ece099522e68b9202"
  end

  def install
    bin.install Dir["*"].first => "zephyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zephyr --version")
  end
end

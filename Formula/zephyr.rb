class Zephyr < Formula
  desc "CLI tool for Zephyr Scale API"
  homepage "https://github.com/bun913/zephyr-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-arm64"
      sha256 "59cafaf34329198514ac5f6e50069eaca029a09d3a9f45a9abccc7f4ac52c90b"
    end
    on_intel do
      url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-macos-x64"
      sha256 "493e2c5654bcecc7ba004ca83c03fc622a2b7e36dd1560407d0431ac7abfd5a2"
    end
  end

  on_linux do
    url "https://github.com/bun913/zephyr-cli/releases/download/v#{version}/zephyr-linux-x64"
    sha256 "2fe64d727483a6381743f039c4c036e77aae2a0e6602a5df7b4f019df1eb8608"
  end

  def install
    bin.install Dir["*"].first => "zephyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zephyr --version")
  end
end

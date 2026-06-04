class Rumor < Formula
  desc "Multi-process TUI orchestrator"
  homepage "https://github.com/ornitech/rumor"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-aarch64-apple-darwin.tar.gz"
      sha256 "2c8dba43c4b978c631d7adab3a8032244af78426672e46a607be99a5192b062d"
    end
    on_intel do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-x86_64-apple-darwin.tar.gz"
      sha256 "29f7a7745053d289811d9c4d6833213d28bb12e72c4d09ef419f55b85059850e"
    end
  end

  def install
    bin.install "rumor"
  end

  test do
    output = shell_output("#{bin}/rumor 2>&1", 2)
    assert_match "usage: rumor", output
  end
end

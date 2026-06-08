class Rumor < Formula
  desc "Multi-process TUI orchestrator"
  homepage "https://github.com/ornitech/rumor"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-aarch64-apple-darwin.tar.gz"
      sha256 "094fe6787cb20362eb51d79a766f4cc1964787dba69e4cb357c0d67cfa855adb"
    end
    on_intel do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-x86_64-apple-darwin.tar.gz"
      sha256 "0daf9d1d76d7f2f4f1380ceafaf0ff83cb8f5539a2c71ff0b5e2a65a6ea102c6"
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

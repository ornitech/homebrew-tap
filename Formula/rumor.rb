class Rumor < Formula
  desc "Multi-process TUI orchestrator"
  homepage "https://github.com/ornitech/rumor"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM"
    end
    on_intel do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_INTEL"
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

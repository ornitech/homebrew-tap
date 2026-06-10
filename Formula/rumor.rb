class Rumor < Formula
  desc "Multi-process TUI orchestrator"
  homepage "https://github.com/ornitech/rumor"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-aarch64-apple-darwin.tar.gz"
      sha256 "754ad2eef6f2c4efe55652f59984efecce47b2e5506c74b29813ed6aab7e59e3"
    end
    on_intel do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-x86_64-apple-darwin.tar.gz"
      sha256 "56602b8e3088bb0af1049c20394c2967b85a319939f079ff02854dc27c29aa2c"
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

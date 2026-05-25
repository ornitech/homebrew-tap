class Rumor < Formula
  desc "Multi-process TUI orchestrator"
  homepage "https://github.com/ornitech/rumor"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-aarch64-apple-darwin.tar.gz"
      sha256 "9400335e2922cac54641df36f74701852914db5979b981f186f4fa8e98dda8ae"
    end
    on_intel do
      url "https://github.com/ornitech/rumor/releases/download/v#{version}/rumor-x86_64-apple-darwin.tar.gz"
      sha256 "0362d60c020b16c1d4d312062a17ae3ab9e8272c0c67dcd137372c839b561783"
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

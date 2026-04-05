cask "pomodorni" do
  version "1.3.0"
  sha256 "b8c5ed19e7720a88b2a3c96ee724cbec05bd8f020263ce9544fc333118020f14"

  url "https://github.com/ornitech/pomodorni/releases/download/v#{version}/Pomodorni.dmg"
  name "Pomodorni"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ornitech/pomodorni"

  app "Pomodorni.app"

  zap trash: [
    "~/Library/Preferences/com.ornitech.pomodorni.plist",
  ]
end

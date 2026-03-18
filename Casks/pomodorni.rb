cask "pomodorni" do
  version "1.0.1"
  sha256 "2c19633667e39ba2af865ff3cd491afee877682b1525c7026f944c821805892b"

  url "https://github.com/ornitech/pomodorni/releases/download/v#{version}/Pomodorni.dmg"
  name "Pomodorni"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ornitech/pomodorni"

  app "Pomodorni.app"

  zap trash: [
    "~/Library/Preferences/com.ornitech.pomodorni.plist",
  ]
end

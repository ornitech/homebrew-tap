cask "pomodorni" do
  version "1.3.1"
  sha256 "5c3827605b702fa28a32beca57e9f9033bed7fc291194217e4a84076911ef80a"

  url "https://github.com/ornitech/pomodorni/releases/download/v#{version}/Pomodorni.dmg"
  name "Pomodorni"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ornitech/pomodorni"

  app "Pomodorni.app"

  zap trash: [
    "~/Library/Preferences/com.ornitech.pomodorni.plist",
  ]
end

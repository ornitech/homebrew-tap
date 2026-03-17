cask "pomodorni" do
  version "1.0.4"
  sha256 "967c48b980d9d953f90e9fa73a0b77b519132106ed95e283ab794d7ecf8ab0b9"

  url "https://github.com/ornitech/pomodorni/releases/download/v#{version}/Pomodorni.dmg"
  name "Pomodorni"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ornitech/pomodorni"

  app "Pomodorni.app"

  zap trash: [
    "~/Library/Preferences/com.ornitech.pomodorni.plist",
  ]
end

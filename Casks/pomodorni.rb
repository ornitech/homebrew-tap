cask "pomodorni" do
  version "1.1.0"
  sha256 "6f450da8245d9219281c42457fa31a3df2e0bdf664f35a3494e3d37f9c346f85"

  url "https://github.com/ornitech/pomodorni/releases/download/v#{version}/Pomodorni.dmg"
  name "Pomodorni"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ornitech/pomodorni"

  app "Pomodorni.app"

  zap trash: [
    "~/Library/Preferences/com.ornitech.pomodorni.plist",
  ]
end

cask "pomodorni" do
  version "1.0.0"
  sha256 "78dd3d65944b245b0b4293fe187ff27693951c5afea31c88551bb6c31601caf5"

  url "https://github.com/ornitech/pomodorni/releases/download/v#{version}/Pomodorni.dmg"
  name "Pomodorni"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ornitech/pomodorni"

  app "Pomodorni.app"

  zap trash: [
    "~/Library/Preferences/com.ornitech.pomodorni.plist",
  ]
end

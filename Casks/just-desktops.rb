cask "just-desktops" do
  version "0.1.5"
  sha256 "2db1fc67ab48a6f6851b4cf5e399a40a037672e43701048399c454be6e7ccb2b"

  url "https://github.com/n-seiji/just-desktops/releases/download/v#{version}/just-desktops-#{version}.app.zip"
  name "just-desktops"
  desc "Minimal workspace switcher and focus border"
  homepage "https://github.com/n-seiji/just-desktops"

  depends_on macos: :ventura

  app "just-desktops.app"

  uninstall quit: "dev.n-seiji.just-desktops"

  zap trash: "~/.config/just-desktops"

  caveats <<~EOS
    First launch:
      1. Open just-desktops. macOS asks for Accessibility permission; allow it
         under System Settings > Privacy & Security > Accessibility.
         It starts working as soon as the permission is granted.
      2. Screen Recording is only needed for `switcher = square` in
         ~/.config/just-desktops/config. It is asked for at launch in that mode only.

    To start at login, turn on Launch at Login in the menu bar item's menu
    (right-click it). Do not run it together with the launchd service
    (`mise run service`); the second instance exits.
  EOS
end

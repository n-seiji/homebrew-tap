# frozen_string_literal: true

cask "novakey-r" do
  version "0.1.1"
  sha256 "7be21ed1f4649b2d9cb5d7b5c9a716dafd545228ca696c3706ffcfa1ccc32945"

  url "https://github.com/n-seiji/novakey-r/releases/download/v#{version}/NovakeyR-#{version}.app.zip"
  name "NovakeyR"
  desc "Japanese input method with on-device conversion"
  homepage "https://github.com/n-seiji/novakey-r"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  input_method "NovakeyR.app"

  uninstall signal: [["TERM", "dev.n-seiji.inputmethod.NovakeyR"]], on_upgrade: :signal

  zap trash: [
    "~/Library/Application Support/NovakeyR",
    "~/Library/Logs/NovakeyR",
    "~/Library/Preferences/dev.n-seiji.inputmethod.NovakeyR.plist",
  ]

  caveats <<~EOS
    Add NovakeyR in System Settings > Keyboard > Input Sources (Japanese).
    You may need to log out and back in first.
    Before uninstalling, remove NovakeyR from Input Sources.
  EOS
end

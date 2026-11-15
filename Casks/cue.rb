cask "cue" do
  version "0.1.5"
  sha256 "0c65e7ff08adc2bb8537b72cbc4a3aae216e9984a0a296cb356f9b8c31a222f2"

  url "https://casks.kavaz.org/cue/Cue-#{version}.zip"
  name "Cue"
  desc "Now-playing companion for Spotify Connect with menu bar and desktop widgets"
  homepage "https://tarik.kavaz.org/"

  auto_updates true
  depends_on macos: :sonoma

  app "Cue.app"

  # A running widget extension keeps the old binary after the app is replaced.
  postflight_steps do
    terminate_process "CueWidgets"
  end

  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.cue",
    "~/Library/Caches/com.tarikkavaz.cue",
    "~/Library/Preferences/com.tarikkavaz.cue.plist",
  ]
end

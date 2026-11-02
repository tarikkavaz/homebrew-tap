cask "cue" do
  version "0.1.4"
  sha256 "1d6990912d4a65e1418e4239e96e1c51114e416a89be3e857bac303b9e35c724"

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

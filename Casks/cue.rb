cask "cue" do
  version "0.1.3"
  sha256 "b9cf6abab99f990472a7cae80a703193cc5a6eeb98625b68243bdb2275657771"

  url "https://casks.kavaz.org/cue/Cue-#{version}.zip"
  name "Cue"
  desc "Now-playing companion for Spotify Connect with menu bar and desktop widgets"
  homepage "https://tarik.kavaz.org/"

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

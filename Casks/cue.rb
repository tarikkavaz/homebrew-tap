cask "cue" do
  version "0.1.6"
  sha256 "829b98a0e8779761ccfd17d78b8a33148ad47662c81cac730fd7a5eef1e9e0d7"

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

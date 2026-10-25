cask "cue" do
  version "0.1.2"
  sha256 "bb75813d7a8cd457b509705d82f283ea4b8e08a1e46212a9bb524d406bd32a39"

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

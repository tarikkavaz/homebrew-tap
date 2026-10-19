cask "cue" do
  version "0.1.0"
  sha256 "16bb9c33d2ec33253e29febe5d3ce8164bbc411e59060ef2c0d2cd145b10a877"

  url "https://github.com/tarikkavaz/Cue/releases/download/v#{version}/Cue.zip"
  name "Cue"
  desc "Now-playing companion for Spotify Connect with menu bar and desktop widgets"
  homepage "https://github.com/tarikkavaz/Cue"

  depends_on macos: :sonoma

  app "Cue.app"

  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.cue",
    "~/Library/Caches/com.tarikkavaz.cue",
    "~/Library/Preferences/com.tarikkavaz.cue.plist",
  ]
end

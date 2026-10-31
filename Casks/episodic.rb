cask "episodic" do
  version "0.1.2"
  sha256 "70a556bdfd4ea85437d028d870e550f70b77a7e5726b77c7027f88f553a22023"

  url "https://casks.kavaz.org/episodic/Episodic-#{version}.zip"
  name "Episodic"
  desc "Fetches new episodes from your TVmaze calendar through put.io into your library"
  homepage "https://github.com/tarikkavaz/Episodic"

  depends_on macos: :golden_gate

  app "Episodic.app"

  # Keychain items (the stored put.io and TVmaze credentials) are not removed by zap.
  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.Episodic",
    "~/Library/Caches/com.tarikkavaz.Episodic",
    "~/Library/Preferences/com.tarikkavaz.Episodic.plist",
  ]
end

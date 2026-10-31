cask "episodic" do
  version "0.1.5.1"
  sha256 "76aa183d1479fc4de8e3b69b4007071fb1605ff364264db5e707a237a4592be9"

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

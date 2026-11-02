cask "episodic" do
  version "0.1.5.17"
  sha256 "c0e46187c11a268b986375c26da81da8c51d90238b5d905979640e78d74d887e"

  url "https://casks.kavaz.org/episodic/Episodic-#{version}.zip"
  name "Episodic"
  desc "Fetches new episodes from your TVmaze calendar through put.io into your library"
  homepage "https://github.com/tarikkavaz/Episodic"

  auto_updates true
  depends_on macos: :golden_gate

  app "Episodic.app"

  # Keychain items (the stored put.io and TVmaze credentials) are not removed by zap.
  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.Episodic",
    "~/Library/Caches/com.tarikkavaz.Episodic",
    "~/Library/Preferences/com.tarikkavaz.Episodic.plist",
  ]
end

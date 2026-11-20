cask "episodic" do
  version "0.1.5.23"
  sha256 "bdd08a9c29b8ce842f06aae7c47e430ec62bc25eb72e0c9a7f5cca434d76af4f"

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

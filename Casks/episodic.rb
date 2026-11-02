cask "episodic" do
  version "0.1.5.13"
  sha256 "d376e9a72dcfe26cfad5344ef2fca73802ed3b9a9296c58433be7951101ff1f8"

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

cask "stabilisator" do
  version "0.1.4"
  sha256 "a1d7d3d4596a653d79788cef44334485e0b0b78825bcc508e29af55b2a6d88c3"

  url "https://casks.kavaz.org/stabilisator/Stabilisator-#{version}.zip"
  name "Stabilisator"
  desc "Gentle system-wide dialogue leveling and volume control for the Mac menu bar"
  homepage "https://github.com/tarikkavaz/Stabilisator"

  # The app needs macOS 14.2 for the Core Audio process tap. Homebrew can only say Sonoma (14.0).
  depends_on macos: :sonoma

  app "Stabilisator.app"

  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.stabilisator",
    "~/Library/Caches/com.tarikkavaz.stabilisator",
    "~/Library/Preferences/com.tarikkavaz.stabilisator.plist",
  ]
end

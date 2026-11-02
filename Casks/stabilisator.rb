cask "stabilisator" do
  version "0.1.8"
  sha256 "67fc6ab19d097cf1b31db9205b44ed288c255db3672affbd4d4581faf812f8df"

  url "https://casks.kavaz.org/stabilisator/Stabilisator-#{version}.zip"
  name "Stabilisator"
  desc "Gentle system-wide dialogue leveling and volume control for the Mac menu bar"
  homepage "https://github.com/tarikkavaz/Stabilisator"

  auto_updates true
  # The app needs macOS 14.2 for the Core Audio process tap. Homebrew can only say Sonoma (14.0).
  depends_on macos: :sonoma

  app "Stabilisator.app"

  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.stabilisator",
    "~/Library/Caches/com.tarikkavaz.stabilisator",
    "~/Library/Preferences/com.tarikkavaz.stabilisator.plist",
  ]
end

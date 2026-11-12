cask "stabilisator" do
  version "0.1.9"
  sha256 "e3132c03b259dc854051a50ca6bf6c8d14876b8860f1e418868fda7c6b92c9a0"

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

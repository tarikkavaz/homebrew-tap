cask "stabilisator" do
  version "0.1.6"
  sha256 "1413e1eea4d8b150a4201c9a5f4d1ae7b30c618ac12fa98bc55c873909c1b419"

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

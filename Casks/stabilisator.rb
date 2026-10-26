cask "stabilisator" do
  version "0.1.2"
  sha256 "6022c95ff06a8b02411d9c3af2961842a8e640834a0c72f8182e11124f38f69a"

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

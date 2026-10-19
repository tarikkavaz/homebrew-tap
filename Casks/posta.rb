cask "posta" do
  version "0.1.1"
  sha256 "97618d63ea1906463f8b0c9bdb19c641b1b0a1f2d1d7415fbc021b59f68ebed2"

  url "https://kavaz.org/downloads/Posta-#{version}.zip"
  name "Posta"
  desc "Native Gmail client for multiple Google accounts"
  homepage "https://github.com/tarikkavaz/Posta"

  depends_on macos: :sonoma

  app "Posta.app"

  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.Posta",
    "~/Library/Caches/com.tarikkavaz.Posta",
    "~/Library/Preferences/com.tarikkavaz.Posta.plist",
  ]
end

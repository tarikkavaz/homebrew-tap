cask "posta" do
  version "0.1.21"
  sha256 "6bce26ad7327eea2e6e433beadc8491c56ee1733a41cfc9d71767495146ebbea"

  url "https://casks.kavaz.org/posta/Posta-#{version}.zip"
  name "Posta"
  desc "Native Gmail client for multiple Google accounts"
  homepage "https://github.com/tarikkavaz/Posta"

  auto_updates true
  depends_on macos: :sonoma

  app "Posta.app"

  zap trash: [
    "~/Library/Application Support/com.tarikkavaz.Posta",
    "~/Library/Caches/com.tarikkavaz.Posta",
    "~/Library/Preferences/com.tarikkavaz.Posta.plist",
  ]
end

cask "posta" do
  version "0.1.20"
  sha256 "ef2c16eff7403d3abe2ccf969155a1ddd780e83af493bef5b7b89deb5395b156"

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

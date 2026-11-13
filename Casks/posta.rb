cask "posta" do
  version "0.1.7"
  sha256 "724fadc51336d66239bff5e3b8deb3ce294492d33c626bb6357aef9d0d3082b8"

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

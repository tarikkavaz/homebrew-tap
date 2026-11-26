cask "posta" do
  version "0.1.28"
  sha256 "2a5a942af7f826b61a711ff6330f0df9b483f29a6e593a1546e8d1c7b479cdc9"

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

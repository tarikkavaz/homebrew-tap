cask "posta" do
  version "0.1.15"
  sha256 "6bb2240b790260f7d0722394be123a10e444302725b64eaa58aafaa9bc2e76fa"

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

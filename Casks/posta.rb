cask "posta" do
  version "0.1.0"
  sha256 "f49a68e77c12c7657b88a736664d54f1891af5e5a24c16b6cd2cd2016118e527"

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

cask "native" do
  version "0.1.3"
  sha256 "36e31c020ea27421260bbd893979183da4e9bdfdac8f0d8ddc30077758f9ee9c"

  url "https://casks.kavaz.org/native/Native-#{version}.zip"
  name "Native"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/Native"

  auto_updates true
  depends_on macos: :sonoma

  app "Native.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

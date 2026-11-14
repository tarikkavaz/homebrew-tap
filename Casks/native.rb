cask "native" do
  version "0.1.4"
  sha256 "c737a3b96f6b225367e0e41594e7389906c16140ab73346a03b654505dfd8c37"

  url "https://casks.kavaz.org/native/Native-#{version}.zip"
  name "Native"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/Native"

  auto_updates true
  depends_on macos: :sonoma

  app "Native.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

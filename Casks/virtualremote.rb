cask "virtualremote" do
  version "0.2.2"
  sha256 "af0199884dfce302744520b4848b782575fb3c2462db875b89b2c6301846f540"

  url "https://kavaz.org/downloads/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

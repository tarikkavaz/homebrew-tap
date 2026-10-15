cask "virtualremote" do
  version "0.2.1"
  sha256 "7cd0b2cfbde40b99b4a1182d271a4cd749201b2c028e3ea3db045ebc7a0464ea"

  url "https://kavaz.org/downloads/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

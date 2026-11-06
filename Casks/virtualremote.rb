cask "virtualremote" do
  version "0.3.7"
  sha256 "91b3770808c6b461cdb6f30fe5d5483b5b5c74c6c18c562a2deb47f134c57ba0"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  auto_updates true
  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

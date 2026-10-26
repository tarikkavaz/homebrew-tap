cask "virtualremote" do
  version "0.3.4"
  sha256 "a7c6a2a20650bc21aeee04883572cfcca000e480cb6b4b3bef0b7da76f634533"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

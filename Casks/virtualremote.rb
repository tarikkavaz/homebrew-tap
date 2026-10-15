cask "virtualremote" do
  version "0.2.0"
  sha256 "f7ed964860d727f8f979cbf5f51ea174298343be33b88b0b57c486d49e2d444c"

  url "https://kavaz.org/downloads/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

cask "virtualremote" do
  version "0.3.3"
  sha256 "9660782f14de679c5640a684d0a7b04f39873f0a836612d45aa1aee58f2438f4"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

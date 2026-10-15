cask "virtualremote" do
  version "0.1.1"
  sha256 "77f8d0f4acb3b1ba2051abce95bdf72435db6d04026e4628add8d5cb4b2e126e"

  url "https://kavaz.org/downloads/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

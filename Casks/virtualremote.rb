cask "virtualremote" do
  version "0.3.9"
  sha256 "1059bff18c588b024bb99ab97bf366b18f6bfefa439fcbbdcfd5471c9692b9ba"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  auto_updates true
  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

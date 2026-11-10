cask "virtualremote" do
  version "0.3.8"
  sha256 "5ba343876cc5b3621381da16888ac406b50891c9bcb8a53573ccee52c503a8e1"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  auto_updates true
  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

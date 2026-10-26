cask "virtualremote" do
  version "0.3.1"
  sha256 "83ac83bdf3533b4a1a201a1b2e0e9a17bbc24a9f0d14e51b9281d73125abad43"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

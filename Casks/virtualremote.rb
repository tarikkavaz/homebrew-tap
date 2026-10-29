cask "virtualremote" do
  version "0.3.5"
  sha256 "d2b02b99e75e532ae90fa8e54b1497c46e3bc9efa0a34a8972833a40ee6d014d"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

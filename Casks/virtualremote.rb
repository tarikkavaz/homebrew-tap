cask "virtualremote" do
  version "0.3.0"
  sha256 "2d5e1507aa1d6c152f14f0f50144d33530c1f2b38ef147e3242e1944b671646e"

  url "https://casks.kavaz.org/virtualremote/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

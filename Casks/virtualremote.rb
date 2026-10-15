cask "virtualremote" do
  version "0.1.0"
  sha256 "12aaa441392af46b5893a387b01684f651c671efc7918df2b7dca9971b368007"

  url "https://kavaz.org/downloads/VirtualRemote-#{version}.zip"
  name "VirtualRemote"
  desc "Menu bar remote for media playing on another computer on the network"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :sonoma

  app "VirtualRemote.app"

  zap trash: "~/Library/Preferences/org.kavaz.VirtualRemote.plist"
end

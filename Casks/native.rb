cask "native" do
  version "0.1.1"
  sha256 "64949415d4597010142b6bd438d2360e7ce020634124e1492d3d8b9573ca964c"

  url "https://casks.kavaz.org/native/Native-#{version}.zip"
  name "Native"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/Native"

  auto_updates true
  depends_on macos: :golden_gate

  app "Native.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

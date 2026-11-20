cask "nativekeys" do
  version "0.2.7"
  sha256 "c8e6f931a292a7d2b382c94d0709e0d3df47ae17bf15acbc35142d22c42268d6"

  url "https://casks.kavaz.org/nativekeys/NativeKeys-#{version}.zip"
  name "NativeKeys"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/NativeKeys"

  auto_updates true
  depends_on macos: :sonoma

  app "NativeKeys.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

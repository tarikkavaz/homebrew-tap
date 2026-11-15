cask "nativekeys" do
  version "0.2.4"
  sha256 "2126e827b3a28a71614e48bb20cc67ad0447993f914a8cde3af55680448c97a0"

  url "https://casks.kavaz.org/nativekeys/NativeKeys-#{version}.zip"
  name "NativeKeys"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/NativeKeys"

  auto_updates true
  depends_on macos: :sonoma

  app "NativeKeys.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

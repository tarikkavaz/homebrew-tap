cask "nativekeys" do
  version "0.2.1"
  sha256 "ef2f51f7475fc2a5a69de5951a52ff600a4ed14fbb159965ce59a540593f132e"

  url "https://casks.kavaz.org/nativekeys/NativeKeys-#{version}.zip"
  name "NativeKeys"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/NativeKeys"

  auto_updates true
  depends_on macos: :sonoma

  app "NativeKeys.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

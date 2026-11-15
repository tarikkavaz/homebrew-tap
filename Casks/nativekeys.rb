cask "nativekeys" do
  version "0.2.3"
  sha256 "16ddd368653fc9ac20654075ac43c1ea2a31354263ef2c1405b56009f75edebe"

  url "https://casks.kavaz.org/nativekeys/NativeKeys-#{version}.zip"
  name "NativeKeys"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/NativeKeys"

  auto_updates true
  depends_on macos: :sonoma

  app "NativeKeys.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

cask "nativekeys" do
  version "0.2.5"
  sha256 "eeaef76e90094f311b05a5cc42d534c3fa04cb9e192b9b901a208747d4e59712"

  url "https://casks.kavaz.org/nativekeys/NativeKeys-#{version}.zip"
  name "NativeKeys"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/NativeKeys"

  auto_updates true
  depends_on macos: :sonoma

  app "NativeKeys.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

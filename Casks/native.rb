cask "native" do
  version "0.1.0"
  sha256 "16ed6a0cfff619834b599b1c337080690221cd4efaec4c8521bb874514acbd38"

  url "https://casks.kavaz.org/native/Native-#{version}.zip"
  name "Native"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/Native"

  auto_updates true
  depends_on macos: :golden_gate

  app "Native.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

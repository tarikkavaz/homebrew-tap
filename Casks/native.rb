cask "native" do
  version "0.1.2"
  sha256 "8517002c54fbcd1d2f822c0f16c758634373530c76518ac4822d73692f7910c5"

  url "https://casks.kavaz.org/native/Native-#{version}.zip"
  name "Native"
  desc "Corrects ASCII Turkish into proper Turkish while typing"
  homepage "https://github.com/tarikkavaz/Native"

  auto_updates true
  depends_on macos: :sonoma

  app "Native.app"

  zap trash: "~/Library/Preferences/com.tarikkavaz.Native.plist"
end

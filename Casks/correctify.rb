cask "correctify" do
  version "2.1.2"
  sha256 "d4d67bdbb95b59f87d9eee62c6ca98606025432be06ddc43f79b3aae0d2e358f"

  url "https://casks.kavaz.org/correctify/Correctify-#{version}.zip"
  name "Correctify"
  desc "Menu bar grammar correction with your own AI provider key"
  homepage "https://tarik.kavaz.org/"

  depends_on macos: :golden_gate

  app "Correctify.app"

  # The preferences and cache paths belong to the bundle id com.correctify, which the older
  # Tauri app used too, so zap also removes what that app left behind.
  zap trash: [
    "~/Library/Application Support/Correctify",
    "~/Library/Caches/com.correctify",
    "~/Library/HTTPStorages/com.correctify",
    "~/Library/Preferences/com.correctify.plist",
  ]
end

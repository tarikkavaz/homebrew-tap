cask "correctify" do
  version "2.1.0"
  sha256 "cc3062da96a7686bb105d3502834f4ef1a7ef00f230969ac0d5f34e575adb766"

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

cask "correctify" do
  version "2.2.2"
  sha256 "4c5cd2ff2960ffb165afd7e2ebb7a17ad2f28356e2a138238def7bfb39fbac97"

  url "https://casks.kavaz.org/correctify/Correctify-#{version}.zip"
  name "Correctify"
  desc "Menu bar grammar correction with your own AI provider key"
  homepage "https://tarik.kavaz.org/"

  auto_updates true
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

cask "correctify" do
  version "2.2.1"
  sha256 "8bff80c577293a368833e333951d67804887e860ef0e2987c6296b7f4abe8feb"

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

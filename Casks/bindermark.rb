cask "bindermark" do
  version "0.1.1-beta.1"
  sha256 "f2adc24b4ad969b81b94bea80ab10b7c2aa24810ee20993ec4fca35a167663a2"

  url "https://casks.kavaz.org/bindermark/BinderMark-#{version}.zip"
  name "BinderMark"
  desc "Chrome bookmarks sidebar with profile switching, docked beside Chrome"
  homepage "https://github.com/tarikkavaz/BinderMark"

  auto_updates true
  depends_on macos: :sonoma

  app "BinderMark.app"

  zap trash: [
    "~/Library/Caches/BinderMark",
    "~/Library/Caches/com.tarikkavaz.BinderMark",
    "~/Library/Preferences/com.tarikkavaz.BinderMark.plist",
  ]
end

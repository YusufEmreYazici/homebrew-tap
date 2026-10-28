cask "centik" do
  version "1.1.0"
  sha256 "5370c6b86e2090fdbe0995a55c4c194f2517b436d933e40b565a223d4ead3693"

  url "https://github.com/YusufEmreYazici/Centik/releases/download/v#{version}/Centik.dmg"
  name "Çentik"
  desc "Turns the MacBook notch into a live island"
  homepage "https://github.com/YusufEmreYazici/Centik"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Çentik.app"

  zap trash: [
    "~/Library/Application Support/Centik",
    "~/Library/Caches/com.emre.centik",
    "~/Library/HTTPStorages/com.emre.centik",
    "~/Library/Preferences/com.emre.centik.plist",
  ]

  caveats <<~EOS
    Çentik isn't notarized by Apple yet, so macOS blocks its first launch.
    Open it once, then choose System Settings → Privacy & Security → Open Anyway.
  EOS
end

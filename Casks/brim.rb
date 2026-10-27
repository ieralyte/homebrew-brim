cask "brim" do
  # version and sha256 are updated automatically by Brim's release workflow.
  version "1.0.0"
  sha256 "fdcbcd04edd9398feb498ad6e62ac74cfae451112440118f1e630208631a9f0c"

  url "https://github.com/ieralyte/brim/releases/download/v#{version}/Brim-#{version}.dmg"
  name "Brim"
  desc "Open-source Dynamic Island for the MacBook notch and lock screen"
  homepage "https://github.com/ieralyte/brim"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Brim.app"

  zap trash: "~/Library/Preferences/io.github.brim.Brim.plist"

  caveats <<~EOS
    Brim is not notarized by Apple, so macOS blocks its first launch.
    Open System Settings → Privacy & Security and click "Open Anyway".
  EOS
end

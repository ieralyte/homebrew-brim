cask "brim" do
  # version and sha256 are updated automatically by Brim's release workflow.
  version "0.5.0"
  sha256 :no_check

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

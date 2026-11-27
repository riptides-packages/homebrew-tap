cask "periscopes" do
  version "0.0.11"
  sha256 "3b6639ac0532f2e5efcea5a5d54e5fa645c78ecf7a8703bcf04421a92f498543"

  url "https://github.com/riptides-packages/periscopes/releases/download/v#{version}/Periscopes.dmg"
  name "Periscopes"
  desc "Inspects and analyzes AI traffic via the Riptides proxy"
  homepage "https://github.com/riptides-packages/periscopes"

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Periscopes.app"

  uninstall quit: "io.riptides.workstation"
end

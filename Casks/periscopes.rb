cask "periscopes" do
  version "0.0.3"
  sha256 "ddabbe3a5ea906d07c3e504031d4c3b1c6e53c2d256ec5690dec8d1335b58965"

  url "https://github.com/riptides-packages/periscopes/releases/download/v#{version}/Periscopes.dmg"
  name "Periscopes"
  desc "Inspects and analyzes AI traffic via the Riptides proxy"
  homepage "https://github.com/riptides-packages/periscopes"

  auto_updates true
  depends_on macos: :tahoe

  app "Periscopes.app"

  uninstall quit: "io.riptides.workstation"
end

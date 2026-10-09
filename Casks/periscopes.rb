cask "periscopes" do
  version "0.0.4"
  sha256 "a4deda4822021ac913f6c622111a8e95c61e253f92a62e5d3535dea48059cabc"

  url "https://github.com/riptides-packages/periscopes/releases/download/v#{version}/Periscopes.dmg"
  name "Periscopes"
  desc "Inspects and analyzes AI traffic via the Riptides proxy"
  homepage "https://github.com/riptides-packages/periscopes"

  auto_updates true
  depends_on macos: :tahoe

  app "Periscopes.app"

  uninstall quit: "io.riptides.workstation"
end

cask "periscopes" do
  version "0.0.5"
  sha256 "75779b2cba444cac6248561ff0c242a43d907d7b1df4b8b92ad858d82a0ab337"

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

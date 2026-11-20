cask "periscopes" do
  version "0.0.7"
  sha256 "2a63fd57648da581215bf6802ffb015610a3448c153676facb402b3c087591e5"

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

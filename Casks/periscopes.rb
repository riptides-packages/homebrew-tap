cask "periscopes" do
  version "0.0.8"
  sha256 "57af1d273207be5ee566bb709f6ee0d9bb9d86aaae3006dfeb849d7f4d3219e4"

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

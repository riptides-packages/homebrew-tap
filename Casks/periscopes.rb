cask "periscopes" do
  version "0.0.6"
  sha256 "c54f83f0c7f0952d646e2d02ad1b3be61f3b8596566704c0bc0b9b7ef67d5ae8"

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

cask "periscopes" do
  version "0.0.2"
  sha256 "311cb585ddd3e94f7c06834c102c7c3a41d6b9a1cecf7e07c0fb377e394d84a0"

  url "https://github.com/riptides-packages/periscopes/releases/download/v#{version}/Periscopes.dmg"
  name "Periscopes"
  desc "Inspects and analyzes AI traffic via the Riptides proxy"
  homepage "https://github.com/riptides-packages/periscopes"

  auto_updates true
  depends_on macos: :tahoe

  app "Periscopes.app"

  uninstall quit: "io.riptides.workstation"
end

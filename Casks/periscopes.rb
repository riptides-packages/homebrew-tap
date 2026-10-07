cask "periscopes" do
  version "0.0.1"
  sha256 "c49d7296f4a55c897c5d32fae67d692492417c9d011aeb984d539eb71172a1e2"

  url "https://github.com/riptides-packages/workstation/releases/download/v#{version}/Periscopes.dmg"
  name "Periscopes"
  desc "Routes outbound web traffic through the Riptides proxy for inspection"
  homepage "https://github.com/riptides-packages/workstation"

  depends_on macos: :tahoe

  app "Periscopes.app"

  uninstall quit: "io.riptides.workstation"
end

cask "periscopes" do
  version "0.0.2"
  sha256 "91c329498d2ee6570b57ebd2ede4051be76eefe3fc424de71c9eae9d2281ada8"

  url "https://github.com/riptides-packages/periscopes/releases/download/v#{version}/Periscopes.dmg"
  name "Periscopes"
  desc "Inspects and analyzes AI traffic via the Riptides proxy"
  homepage "https://github.com/riptides-packages/periscopes"

  auto_updates true
  depends_on macos: :tahoe

  app "Periscopes.app"

  uninstall quit: "io.riptides.workstation"
end

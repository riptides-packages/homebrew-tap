cask "riptides-cli" do
  version "0.0.0"

  on_arm do
    sha256 :no_check
    url "https://github.com/riptides-packages/daemon/releases/download/v0.0.0/daemon-cli_v0.0.0_darwin_arm64.tar.gz"
  end
  on_intel do
    sha256 :no_check
    url "https://github.com/riptides-packages/daemon/releases/download/v0.0.0/daemon-cli_v0.0.0_darwin_amd64.tar.gz"
  end

  name "Riptides CLI"
  desc "Riptides CLI client"
  homepage "https://riptides.io"

  binary "riptides-cli"
end

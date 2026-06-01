class RiptidesCli < Formula
  desc "Riptides CLI client"
  homepage "https://riptides.io"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/riptides-packages/daemon/releases/download/v0.0.0/daemon-cli_v0.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/riptides-packages/daemon/releases/download/v0.0.0/daemon-cli_v0.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "riptides-cli"
  end
end

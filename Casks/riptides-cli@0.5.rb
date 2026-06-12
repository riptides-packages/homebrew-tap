cask "riptides-cli@0.5" do
  version "0.5.18"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.18/riptides-cli_0.5.18_darwin_arm64.tar.gz"
    sha256 "22dc89d6103655e409217ee4c378a0c98cbf1d0e3ffbe37a2a642a342185ac8e"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.18/riptides-cli_0.5.18_darwin_amd64.tar.gz"
    sha256 "79cea89e1d50377726f366d205b9d90c7c8333912de0ae62f51824583b6aef99"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

cask "riptides-cli" do
  version "0.5.19"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.19/riptides-cli_0.5.19_darwin_arm64.tar.gz"
    sha256 "28929e305923985e2ff340e5d7db2e01ccd336cb14dc7762d2d81795ea7e3449"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.19/riptides-cli_0.5.19_darwin_amd64.tar.gz"
    sha256 "0ecd967f62a2ed8d2ac6b8e083b5dd88fb97be640a25231ae6b1b4450511796d"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

cask "riptides-cli@0.7" do
  version "0.7.0"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.0/riptides-cli_0.7.0_darwin_arm64.tar.gz"
    sha256 "945e159f153df1ab82322f314f9ef086c3214023150c8f17a8ed901c34e59e74"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.0/riptides-cli_0.7.0_darwin_amd64.tar.gz"
    sha256 "dcb5b9d2a6869b4e4323d3d6b295eb5d569ff5bb491456b2aa32ac06f011d894"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

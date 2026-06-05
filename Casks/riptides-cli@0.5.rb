cask "riptides-cli@0.5" do
  version "0.5.17"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.17/riptides-cli_0.5.17_darwin_arm64.tar.gz"
    sha256 "fa37cdfe8679d26376c1e3d47907e9b21f5da31cebb60652b5425f589bbda948"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.17/riptides-cli_0.5.17_darwin_amd64.tar.gz"
    sha256 "77be9a6a62f2105c6e901d98436154db2775e6bfa149b1ac1a7571927f4e7dcd"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

cask "riptides-cli" do
  version "0.5.24"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.24/riptides-cli_0.5.24_darwin_arm64.tar.gz"
    sha256 "ce761347b2d6257cab05918d87630f9a9e08b915b882bda6bb6f370777414053"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.24/riptides-cli_0.5.24_darwin_amd64.tar.gz"
    sha256 "f85b2a58ea3e070437652f564e4ac0b8178aa23bdbdaa50f16e552a1d17121b6"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

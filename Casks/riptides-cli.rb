cask "riptides-cli" do
  version "0.6.2"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.2/riptides-cli_0.6.2_darwin_arm64.tar.gz"
    sha256 "5017256d8a744be49177fd99846c11390bbec69bb93623d2d090b59900b968cc"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.2/riptides-cli_0.6.2_darwin_amd64.tar.gz"
    sha256 "87d214d92b2d27b70c49b42a7fb80639fee481da9cec38272400e5f66805b4ff"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

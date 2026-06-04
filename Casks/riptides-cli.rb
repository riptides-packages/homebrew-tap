cask "riptides-cli" do
  version "0.5.16"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.16/riptides-cli_0.5.16_darwin_arm64.tar.gz"
    sha256 "272cf31613943e633574d04c20a451e59f31a331af55a264ef90ccd3e1fdf9ff"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.16/riptides-cli_0.5.16_darwin_amd64.tar.gz"
    sha256 "5ed6c413b773923206966fce4076fdd7a7525d9494bdcfe80c552009a71152ca"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

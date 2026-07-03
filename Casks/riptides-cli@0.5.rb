cask "riptides-cli@0.5" do
  version "0.5.26"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.26/riptides-cli_0.5.26_darwin_arm64.tar.gz"
    sha256 "fe6f194a5873dee7873cbfd6f6b06e3e3fc433c10f6a33d07efc17af08cf9403"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.26/riptides-cli_0.5.26_darwin_amd64.tar.gz"
    sha256 "1fa42bd206e8c47a059ee22ed389bef305c44bd4297772635838c89b0982ecf9"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

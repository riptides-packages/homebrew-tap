cask "riptides-cli" do
  version "0.5.23"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.23/riptides-cli_0.5.23_darwin_arm64.tar.gz"
    sha256 "f825d42182606d447cc572b8d4bea6999134fc2ce0fdfa659bf60d897249ee2c"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.23/riptides-cli_0.5.23_darwin_amd64.tar.gz"
    sha256 "e8ff3e54eac245f9a5cf43f86816934a1bf35c86ae13fcda7974b872e0dbf7f9"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

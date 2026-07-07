cask "riptides-cli" do
  version "0.5.27"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.27/riptides-cli_0.5.27_darwin_arm64.tar.gz"
    sha256 "a8b3061dabda12fb25f1e93b35de1ead80d340e9e70d041b5c2c72e8ba05e2a2"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.27/riptides-cli_0.5.27_darwin_amd64.tar.gz"
    sha256 "6667a0ee6b1002ae5d5c7d95b54653c9be1a50fef4d612294549469bdb0821c9"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

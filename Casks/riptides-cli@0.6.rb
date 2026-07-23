cask "riptides-cli@0.6" do
  version "0.6.0"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.0/riptides-cli_0.6.0_darwin_arm64.tar.gz"
    sha256 "adcc074ac8b0f4b40735aafc3e25b637cfba74b2cacc02a84c5a28500fe2391a"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.0/riptides-cli_0.6.0_darwin_amd64.tar.gz"
    sha256 "168587c508ad743239d8d39cc3ababf4c2b0aa618b0c45fc98675dfe09b975b3"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

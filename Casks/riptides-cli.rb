cask "riptides-cli" do
  version "0.6.4"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.4/riptides-cli_0.6.4_darwin_arm64.tar.gz"
    sha256 "6bb48f93901a1bedbdbe5eb0413c7c12904e2e399d1fea0fd4b2fa6ac8a3d38d"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.4/riptides-cli_0.6.4_darwin_amd64.tar.gz"
    sha256 "9c6859ddc3907efb77d4a90dbaae71e7340b0b83a84f257cf871e4750f523d04"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

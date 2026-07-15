cask "riptides-cli" do
  version "0.5.28"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.28/riptides-cli_0.5.28_darwin_arm64.tar.gz"
    sha256 "024382cd2d8b462c32a9093a8413e20f5eb75bdf9dba151ca5f464fcca03fac7"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.28/riptides-cli_0.5.28_darwin_amd64.tar.gz"
    sha256 "af07f01dcc29842bded0c9a3e94abb0f519dd0ea81ed8d96c02721094367372f"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

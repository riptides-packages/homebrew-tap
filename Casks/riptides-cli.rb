cask "riptides-cli" do
  version "0.6.6"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.6/riptides-cli_0.6.6_darwin_arm64.tar.gz"
    sha256 "30fb5936e8cad6d888a9ffbad2aec97e01c8b50f7d4d5ddefcba1a6b52a46c3b"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.6/riptides-cli_0.6.6_darwin_amd64.tar.gz"
    sha256 "10794cbe3ea43390d0c3969e5351c1c5292241768be89146769b5b07bccb5d2f"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

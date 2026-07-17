cask "riptides-cli" do
  version "0.5.29"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.29/riptides-cli_0.5.29_darwin_arm64.tar.gz"
    sha256 "f1c71cb77223d475401336e9fbbf9351e2693f3ed9c48a5ef3fab72c199bcf5f"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.29/riptides-cli_0.5.29_darwin_amd64.tar.gz"
    sha256 "30beab09a902ac81d01db11fffb2bc25b79b33829f1cc889e44520c1d66efc69"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

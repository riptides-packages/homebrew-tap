cask "riptides-cli" do
  version "0.6.7"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.7/riptides-cli_0.6.7_darwin_arm64.tar.gz"
    sha256 "016161ba4a78431cd57f25700df30155c847c67bdc8d4f622892308ddd4120b1"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.7/riptides-cli_0.6.7_darwin_amd64.tar.gz"
    sha256 "2b0e98e958dd020b59a970d4a1674e5129183514002644b8545e3dd65327f619"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

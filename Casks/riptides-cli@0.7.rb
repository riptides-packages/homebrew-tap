cask "riptides-cli@0.7" do
  version "0.7.7"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.7/riptides-cli_0.7.7_darwin_arm64.tar.gz"
    sha256 "eba080a579c042c7096db2bfc11d46e8ad880fcfa03b8fa59d82a9d3cd288c1d"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.7/riptides-cli_0.7.7_darwin_amd64.tar.gz"
    sha256 "be34bb8c405e9b375bbb0d74588b7ec31587702263089069c4b1a333fb853573"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

cask "riptides-cli@0.7" do
  version "0.7.3"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.3/riptides-cli_0.7.3_darwin_arm64.tar.gz"
    sha256 "a4caf0240b2cdfb950a251478e4bb13ded3e8c882b0334c5d1235b81b6daa873"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.3/riptides-cli_0.7.3_darwin_amd64.tar.gz"
    sha256 "9799f241e8ec136c704fc6b6bb6723df17b404c7189558ed13cea586b8b67b9a"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

cask "riptides-cli@0.7" do
  version "0.7.10"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.10/riptides-cli_0.7.10_darwin_arm64.tar.gz"
    sha256 "8670c266946fece1539b40bf36714dfffd8a0e6c76569b5fc3beaeaa6d5c9431"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.10/riptides-cli_0.7.10_darwin_amd64.tar.gz"
    sha256 "1fa7e575cd89b2dd12b88bb6772e88aed482c392056b915c4a714ecc288c25c3"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

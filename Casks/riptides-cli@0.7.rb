cask "riptides-cli@0.7" do
  version "0.7.9"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.9/riptides-cli_0.7.9_darwin_arm64.tar.gz"
    sha256 "8c9087012194152fc18273932fac3f7d40228a6ab5bb2bde4e5095be85265cdb"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.9/riptides-cli_0.7.9_darwin_amd64.tar.gz"
    sha256 "17ba70a5cb3c27fb583fc2cee94a81126f4b01bfdd627ec67a0ff13218028ee0"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

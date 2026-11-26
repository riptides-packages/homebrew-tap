cask "riptides-cli@0.7" do
  version "0.7.12"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.12/riptides-cli_0.7.12_darwin_arm64.tar.gz"
    sha256 "3d053bd2f2f8240c4e7500076676130e524dfae8359b5704125bc6818e7e1f24"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.12/riptides-cli_0.7.12_darwin_amd64.tar.gz"
    sha256 "a68bc45b38aebb3f650912f9b5395e41e0283d4d5b05c767f6ba3a98a10f2b7b"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

cask "riptides-cli@0.7" do
  version "0.7.2"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.2/riptides-cli_0.7.2_darwin_arm64.tar.gz"
    sha256 "f5da09000ee332164454113e0286589ca8444876158543daeb55a746ffce4b0d"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.2/riptides-cli_0.7.2_darwin_amd64.tar.gz"
    sha256 "9e06a47ab7c6149c563ba2a75e9a35da83b36b7c17805eec7e41531842ff9cdb"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

cask "riptides-cli@0.7" do
  version "0.7.11"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.11/riptides-cli_0.7.11_darwin_arm64.tar.gz"
    sha256 "3f65ecf473672321e2c415f50cff87c3016512030b38a24916f3f5ce6f715239"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.11/riptides-cli_0.7.11_darwin_amd64.tar.gz"
    sha256 "2547143363a141e5b92e932fc2efde68e8842cc4599123b131234bda94fa9b23"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

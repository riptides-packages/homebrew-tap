cask "riptides-cli@0.7" do
  version "0.7.13"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.13/riptides-cli_0.7.13_darwin_arm64.tar.gz"
    sha256 "9148e1a417ebec555fa52258479265d8386e29580080a92cc81f4214565cb344"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.13/riptides-cli_0.7.13_darwin_amd64.tar.gz"
    sha256 "4e8e2c1b63ff9e41b2f9b9e4605b02aaf205c67343f81419ba8cac9744edd6e7"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

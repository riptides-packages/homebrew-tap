cask "riptides-cli@0.7" do
  version "0.7.6"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.6/riptides-cli_0.7.6_darwin_arm64.tar.gz"
    sha256 "4daad808403b2371abe183c4c577810b982ce25d9e41423af34a826512e2753e"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.6/riptides-cli_0.7.6_darwin_amd64.tar.gz"
    sha256 "3721f346d2953c6e81626f0b9d88acfe26cc80a829fb0693997816a62309550f"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

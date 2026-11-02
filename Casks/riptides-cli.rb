cask "riptides-cli" do
  version "0.7.5"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.5/riptides-cli_0.7.5_darwin_arm64.tar.gz"
    sha256 "89ebbb7f4b12bc226250a06d118e40028910154eb0f500f1c4099bcfbc65f2d0"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.5/riptides-cli_0.7.5_darwin_amd64.tar.gz"
    sha256 "0a8c8153c37dd0a574965d0231aabf59b751b0f83f280c80f6c3aa70689d61d8"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

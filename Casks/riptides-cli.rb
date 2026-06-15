cask "riptides-cli" do
  version "0.5.21"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.21/riptides-cli_0.5.21_darwin_arm64.tar.gz"
    sha256 "f21508c3b258f7884e3e582168cf52c8c704483ce73e0e1d42d5b5277f6e61d5"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.21/riptides-cli_0.5.21_darwin_amd64.tar.gz"
    sha256 "9dfad10cf126630c28ee18a02672284c8e68fe9a4d19a486b6960818ec617e18"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

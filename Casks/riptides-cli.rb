cask "riptides-cli" do
  version "0.5.25"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.25/riptides-cli_0.5.25_darwin_arm64.tar.gz"
    sha256 "9c61c9b4a0520361b3576c87597825010ed385ab431b8863a634618a3d021788"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.25/riptides-cli_0.5.25_darwin_amd64.tar.gz"
    sha256 "5cb5ee5f890657773a27083be9bd96b136b8e54cc449d5d72f4105f494dcf65a"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

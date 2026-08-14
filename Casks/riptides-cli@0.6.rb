cask "riptides-cli@0.6" do
  version "0.6.5"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.5/riptides-cli_0.6.5_darwin_arm64.tar.gz"
    sha256 "b2e9a4c4c76fe45030dd6294826506efaf1368883ec6b42cf405efb833f621ae"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.5/riptides-cli_0.6.5_darwin_amd64.tar.gz"
    sha256 "34fd80eb696061acdeff5c8e3c531988102b8df92d135fa2202bf2ab9a0cec01"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

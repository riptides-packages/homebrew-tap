cask "riptides-cli@0.5" do
  version "0.5.20"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.20/riptides-cli_0.5.20_darwin_arm64.tar.gz"
    sha256 "69f7d9ef253715e038ca320d5f162933a005354724058285165795acb089432b"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.20/riptides-cli_0.5.20_darwin_amd64.tar.gz"
    sha256 "10000119d87f167e2fedeed4fcd8c9cec62fb2b57afe07c91c79066798295244"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

cask "riptides-cli@0.6" do
  version "0.6.9"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.9/riptides-cli_0.6.9_darwin_arm64.tar.gz"
    sha256 "e0d7f66f3f8b067d9cd5547c548c294629e1747b2b04c21598a549357cf6e619"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.9/riptides-cli_0.6.9_darwin_amd64.tar.gz"
    sha256 "afd3de1b6a8d2bf717ff7ae4a0d2e758448677fedfe6eb62b5c61c3997858263"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

cask "riptides-cli" do
  version "0.6.3"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.3/riptides-cli_0.6.3_darwin_arm64.tar.gz"
    sha256 "360dde0fa780a77a23fc6e3de139082c430c0c2f75d37cee559146f79b709707"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.3/riptides-cli_0.6.3_darwin_amd64.tar.gz"
    sha256 "5e1454b26c65d2a96fe19328dd04193bfcccac3b92018bc1c3229aa2c0afe98c"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

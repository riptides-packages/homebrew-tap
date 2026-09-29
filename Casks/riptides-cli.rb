cask "riptides-cli" do
  version "0.7.1"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.1/riptides-cli_0.7.1_darwin_arm64.tar.gz"
    sha256 "c55e69fe7e6dbda8a55816d498931aa7d58f663963b573ca80f746d8f1935298"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.1/riptides-cli_0.7.1_darwin_amd64.tar.gz"
    sha256 "53b59695db1bd09adf0f8d279f9b8d827b25b067e860a78ca6b7d0bf3effaa6e"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

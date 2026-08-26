cask "riptides-cli@0.6" do
  version "0.6.8"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.8/riptides-cli_0.6.8_darwin_arm64.tar.gz"
    sha256 "7678d9819134afdabc26d92862f9ab9bded36e96c280e189ace735caae0b1f32"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.6.8/riptides-cli_0.6.8_darwin_amd64.tar.gz"
    sha256 "d189d1dc22352c651a4b0fae387c1d4082f3bfc4663f3c59f84948f4c95f112c"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

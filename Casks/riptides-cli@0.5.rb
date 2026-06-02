cask "riptides-cli@0.5" do
  version "0.5.16-rc5"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.16-rc5/riptides-cli_0.5.16-rc5_darwin_arm64.tar.gz"
    sha256 "3d92bebb1f217b3616420e80560d43abee220c871c8b9f303a0d290472ba16cd"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.16-rc5/riptides-cli_0.5.16-rc5_darwin_amd64.tar.gz"
    sha256 "bab18b376c8f7f99f77965a59fa1b101672e98989dae02aa3b492a3b45aed5d9"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

cask "riptides-cli@0.5" do
  version "0.5.22"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.22/riptides-cli_0.5.22_darwin_arm64.tar.gz"
    sha256 "a827dff8ed7cbf1e40d28ee76bc6c1dbff61fbd631ae2670fc71f470e7f6cdaf"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.5.22/riptides-cli_0.5.22_darwin_amd64.tar.gz"
    sha256 "dca828bc8adbbd7e0b40f186902c2064eda37685578cd966d4b18e297b44db3f"
  end

  binary "riptides-cli"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{staged_path}/riptides-cli"]
  end
end

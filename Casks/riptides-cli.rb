cask "riptides-cli" do
  version "0.7.8"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.8/riptides-cli_0.7.8_darwin_arm64.tar.gz"
    sha256 "d243e345369bd43f76b6e6c1c8ea074c8cbb75ed8e879f70ed5635188ca016c8"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.8/riptides-cli_0.7.8_darwin_amd64.tar.gz"
    sha256 "8f8ffcf4332f38ab68596c1b02c0f21d908f01fda06cf23b53ad98d889220244"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

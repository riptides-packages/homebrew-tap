cask "riptides-cli@0.7" do
  version "0.7.4"

  on_arm do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.4/riptides-cli_0.7.4_darwin_arm64.tar.gz"
    sha256 "33ac8b8505cd722adfe00357d3a666fa77d0ceb6ade6b2cbad3aa16d87c711f9"
  end

  on_intel do
    url "https://github.com/riptides-packages/daemon/releases/download/v0.7.4/riptides-cli_0.7.4_darwin_amd64.tar.gz"
    sha256 "079ddd8972a8cfdd5f85ba72ebf844f92b9e345afc3a3e74bc97892296d788e1"
  end

  binary "riptides-cli"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/riptides-cli"]
  end
end

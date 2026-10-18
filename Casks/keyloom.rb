cask "keyloom" do
  version "0.40.1"
  sha256 "314cff24e624cc590a24145a2fafdc1b342603eddd607b7c4a9adb04f591076d"

  url "https://github.com/planetaryescape/keyloom/releases/download/v#{version}/keyloom-#{version}-darwin-arm64.app.zip"
  name "keyloom"
  desc "Local-first keyboard configurator for QMK and ZMK boards"
  homepage "https://github.com/planetaryescape/keyloom"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "keyloom.app"
  # One install, one version: the bundled binary is the CLI too (install.sh stays for the CLI alone, and for Linux).
  binary "#{appdir}/keyloom.app/Contents/MacOS/keyloom"

  zap trash: "~/Library/Application Support/dev.planetaryescape.keyloom"
end

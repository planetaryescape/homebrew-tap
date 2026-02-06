class Blah < Formula
  desc "Terminal client for blah.chat AI assistant"
  homepage "https://blah.chat"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-darwin-arm64.tar.gz"
      sha256 "e0e49dabfd21496672cf49f9e7e864e8b9bc9187d21bf71d3e6f2b1919f7cb62"
    end
    # Intel Mac (darwin-x64) temporarily unsupported - requires paid CI runner
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-arm64.tar.gz"
      sha256 "baf03b4d090e550f7026a9149ebdb2f12a009a30546d218e162c307b434fce81"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-x64.tar.gz"
      sha256 "0e0866a2dd99568ce0a852738a3cfe98a3a21d4e5f547b5c0633f5bdfd55dd12"
    end
  end

  def install
    bin.install "blah"
  end

  test do
    system "#{bin}/blah", "--version"
  end
end

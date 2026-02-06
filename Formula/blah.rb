class Blah < Formula
  desc "Terminal client for blah.chat AI assistant"
  homepage "https://blah.chat"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-darwin-arm64.tar.gz"
      sha256 "cfa3ad5ffb1477aa9cb9ab6b3e19ddb0bc4f044b7c1072991378e433ed806eb6"
    end
    # Intel Mac (darwin-x64) temporarily unsupported - requires paid CI runner
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-arm64.tar.gz"
      sha256 "06dab99dfbaf2380672e8ece82c0a72f0f2d957495a1186def62903f036af540"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-x64.tar.gz"
      sha256 "ab2d9487f0be7c8f1275326a95e06aed4ffc4b16e3ab8c788b5c4c314272edfd"
    end
  end

  def install
    bin.install "blah"
  end

  test do
    system "#{bin}/blah", "--version"
  end
end

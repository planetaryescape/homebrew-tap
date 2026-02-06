class Blah < Formula
  desc "Terminal client for blah.chat AI assistant"
  homepage "https://blah.chat"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-darwin-arm64.tar.gz"
      sha256 "468437878c74f0cdf43781e6dbf8f90c5aee690596a6db4ad89ba3343b4cb940"
    end
    # Intel Mac (darwin-x64) temporarily unsupported - requires paid CI runner
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-arm64.tar.gz"
      sha256 "aedf09286cbb95536d4b418a382088cea0f0a95909648d49588cc1a0811e8cb5"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-x64.tar.gz"
      sha256 "e3c44e3f26bcb9aa2bd44d9c1d743950951911a799485c5f200df75d1e0deb8b"
    end
  end

  def install
    bin.install "blah"
  end

  test do
    system "#{bin}/blah", "--version"
  end
end

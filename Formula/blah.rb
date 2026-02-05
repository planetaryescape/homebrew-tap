class Blah < Formula
  desc "Terminal client for blah.chat AI assistant"
  homepage "https://blah.chat"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_X64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X64"
    end
  end

  def install
    bin.install "blah"
  end

  test do
    system "#{bin}/blah", "--version"
  end
end

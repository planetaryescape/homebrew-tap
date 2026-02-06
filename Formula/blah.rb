class Blah < Formula
  desc "Terminal client for blah.chat AI assistant"
  homepage "https://blah.chat"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-darwin-arm64.tar.gz"
      sha256 "f7c11b8bcf9bf392e80181e75129cbd004eaa62718e0864d851ecfaf90a00423"
    end
    # Intel Mac (darwin-x64) temporarily unsupported - requires paid CI runner
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-arm64.tar.gz"
      sha256 "bda8221f307c0524b0d4972a3a01bee8de39e3c28d8585ebae892c53326326bd"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-x64.tar.gz"
      sha256 "cbd6714982642718b5a8037c30de5bbd9086bc1b1889d25d0d8df13cdca5ca25"
    end
  end

  def install
    bin.install "blah"
  end

  test do
    system "#{bin}/blah", "--version"
  end
end

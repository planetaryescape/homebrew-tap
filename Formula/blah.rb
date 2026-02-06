class Blah < Formula
  desc "Terminal client for blah.chat AI assistant"
  homepage "https://blah.chat"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-darwin-arm64.tar.gz"
      sha256 "9f865063d63b145d344e0b4ff082a916359983187f2661464b2c7ecc1b98f450"
    end
    # Intel Mac (darwin-x64) temporarily unsupported - requires paid CI runner
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-arm64.tar.gz"
      sha256 "eaa4720dd5106fe05164bc4cac0acea3d255cc54fe697d60074c6b9000037545"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah.chat/releases/download/cli-v#{version}/blah-cli-linux-x64.tar.gz"
      sha256 "67d07779ad3c93fa4edc45e4f62dcf7e028d93bc1fcb53e50efc6040d968c5e4"
    end
  end

  def install
    bin.install "blah"
  end

  test do
    system "#{bin}/blah", "--version"
  end
end

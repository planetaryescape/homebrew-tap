class BlahCode < Formula
  desc "Local-first coding agent CLI for blah.chat"
  homepage "https://github.com/planetaryescape/blah-code"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-darwin-arm64.tar.gz"
      sha256 "8c0b98b598b88e82adf4c9b4ec7eafe035f2ed93b5dae0e140e083ba90e8cd47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-arm64.tar.gz"
      sha256 "a5ff13054c31d5f2f2ee293dbba5a44d814b7a9c45b9de133d45700d36f5af40"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-x64.tar.gz"
      sha256 "89d210028e237b1d3abf941f1fece4cd86fa528da3293be8ba5b5b8477d9b7eb"
    end
  end

  def install
    bin.install "blah-code"
  end

  test do
    system "#{bin}/blah-code", "--version"
  end
end

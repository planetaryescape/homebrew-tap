class BlahCode < Formula
  desc "Local-first coding agent CLI for blah.chat"
  homepage "https://github.com/planetaryescape/blah-code"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-darwin-arm64.tar.gz"
      sha256 "2062ea1155ec777727e9a44741e18864431c2f6f33d724f4b1cd5a56de190132"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-arm64.tar.gz"
      sha256 "3739acc18eceda22341a2fb70141b0c567d85d0b9729450305e4e60a8b836520"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-x64.tar.gz"
      sha256 "12e264dc6b4b0063505f6f13420a9281066401e941a64b4504536201c5204d24"
    end
  end

  def install
    bin.install "blah-code"
  end

  test do
    system "#{bin}/blah-code", "--version"
  end
end

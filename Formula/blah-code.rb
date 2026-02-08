class BlahCode < Formula
  desc "Local-first coding agent CLI for blah.chat"
  homepage "https://github.com/planetaryescape/blah-code"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-darwin-arm64.tar.gz"
      sha256 "48ebabe6357a3c402a688598cd8023ebda45a5732256d4d1d1ca02327a667977"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-arm64.tar.gz"
      sha256 "ce979d5aa8355d5444081660fc2fd764b68e46866bd9bc5d28ff84c87c106229"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-x64.tar.gz"
      sha256 "d7ec6ab7a6972f41132718722660a4815e9b9d12e50a97cfbe57464802dab2b5"
    end
  end

  def install
    bin.install "blah-code"
  end

  test do
    system "#{bin}/blah-code", "--version"
  end
end

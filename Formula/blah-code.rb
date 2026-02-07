class BlahCode < Formula
  desc "Local-first coding agent CLI for blah.chat"
  homepage "https://github.com/planetaryescape/blah-code"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-darwin-arm64.tar.gz"
      sha256 "39fbba028f9d656db56a64746653615e4c1d7fe80940b96efa8baa33294c83c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-arm64.tar.gz"
      sha256 "d181465c38604280d9edd57a4bf93449d28bf3c5e639df724a42f04759a7ac15"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-x64.tar.gz"
      sha256 "4c47de30435dabe0c124fc401b7491354cb9c4b4eab7c096e34a1cc2fbc64131"
    end
  end

  def install
    bin.install "blah-code"
  end

  test do
    system "#{bin}/blah-code", "--version"
  end
end

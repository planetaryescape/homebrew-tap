class BlahCode < Formula
  desc "Local-first coding agent CLI for blah.chat"
  homepage "https://github.com/planetaryescape/blah-code"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-darwin-arm64.tar.gz"
      sha256 "94a0a234f19f2ac5a70e74a09bc075f21b4ea1cb4706c8cc471ab6db09c739d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-arm64.tar.gz"
      sha256 "09afb65f91708ebd6978859889b0f2943a90fa1ab021c3477c17ae0d8df10333"
    end
    on_intel do
      url "https://github.com/planetaryescape/blah-code/releases/download/cli-v#{version}/blah-code-cli-linux-x64.tar.gz"
      sha256 "56584cd1cd7541f96f5fbee81d05f8160e3592db7ed95fb3370fe34ec390e48d"
    end
  end

  def install
    bin.install "blah-code"
  end

  test do
    system "#{bin}/blah-code", "--version"
  end
end

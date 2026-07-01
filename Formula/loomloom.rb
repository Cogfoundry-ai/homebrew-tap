class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.9/loomloom-darwin-arm64.tar.gz"
      sha256 "3b918960a632e924ba583bf3c7c3e15fa1f51058d5d7b46afe462a99f9935f4a"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.9/loomloom-darwin-amd64.tar.gz"
      sha256 "bef66e2f5352f6f2027e19cef7a26681fd946dc5f5f10d34c8ebfe90cded9b92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.9/loomloom-linux-arm64.tar.gz"
      sha256 "89eee2dce10cefddaa54fd079a548673b8b82cc21416e3ccda4659c52f16f610"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.9/loomloom-linux-amd64.tar.gz"
      sha256 "d83b43089bc6dfb3b2f50e8eeb7bb0d3c85cb2307bd82612fb7233749dc10a4e"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.3/loomloom-darwin-arm64.tar.gz"
      sha256 "d7a47e6d29e00fb1518c568353edb234ad471319881f291f33ca39a22be92919"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.3/loomloom-darwin-amd64.tar.gz"
      sha256 "c540f587ac23886a93c8cfffa64479e0a2db930b94fc7134ae8ecc00727b8fe1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.3/loomloom-linux-arm64.tar.gz"
      sha256 "2ecb2a29f58b66c74b8f26b89a83d177f90705f718558f8c4551d3a1a8408015"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.3/loomloom-linux-amd64.tar.gz"
      sha256 "2db6bfc36183d00aa13164e1855c0024bd28895b51804ca81ee3a46bd144078a"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

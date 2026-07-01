class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.7/loomloom-darwin-arm64.tar.gz"
      sha256 "98323baa663d8e6b3b41b3fb5b03a1b2e139ced890237877edccc6de6134c575"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.7/loomloom-darwin-amd64.tar.gz"
      sha256 "84058935a79ed7989634e74da3359621fc96a4da0a1f66f6a2f9dccf6aa21409"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.7/loomloom-linux-arm64.tar.gz"
      sha256 "4d6257b5cbc7a692e2c4824c85128e819b353a1279a69ec9dceef139238542ca"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.7/loomloom-linux-amd64.tar.gz"
      sha256 "d216ccaf56669b12066da0465eed5d83e53c1c5c2c49887f49cbb5a0cc60b9e4"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

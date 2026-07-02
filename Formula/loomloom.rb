class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.11/loomloom-darwin-arm64.tar.gz"
      sha256 "17fcf6b875252be42266e6e51c26f1304f479568de080dde04fcf1c3dfefa9f7"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.11/loomloom-darwin-amd64.tar.gz"
      sha256 "95b716447b90572bb17cd7915ca74a95da5129e5aa21454624bf51d6898fe2fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.11/loomloom-linux-arm64.tar.gz"
      sha256 "8398a9d09ffa4a6876eef71c2155252c2299d673b9def27d9c00b9c6ab79148c"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.11/loomloom-linux-amd64.tar.gz"
      sha256 "fe3f62a4a02e0aad9aa82083a15e03b871f52f80304c69cee7c9ce50045c7043"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

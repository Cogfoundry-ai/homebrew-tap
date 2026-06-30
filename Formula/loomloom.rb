class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.4/loomloom-darwin-arm64.tar.gz"
      sha256 "82efe1116589931387d2ad2ba7eb46b5d30cde67d8c02762566eb3b07629bb50"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.4/loomloom-darwin-amd64.tar.gz"
      sha256 "775258ebb7f5d4d575178aadba1d07e8c312a71d52c30e230202f3ad78e38075"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.4/loomloom-linux-arm64.tar.gz"
      sha256 "37aa40a4094722301ebb62dbcadde368742a70fcc6424cfe1fdb5e262217774d"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.4/loomloom-linux-amd64.tar.gz"
      sha256 "580e8c2271e8ab75f1b49ff962aa7130ef38adf67643de6fd482505dd91ca84b"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

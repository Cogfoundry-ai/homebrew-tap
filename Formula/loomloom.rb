class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.5/loomloom-darwin-arm64.tar.gz"
      sha256 "61b9b4aaae7d1f5596e35917e6c3652df1b5769d4e5994ac59856df6c8785f67"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.5/loomloom-darwin-amd64.tar.gz"
      sha256 "e765682614b630c25bbb737fbfbb26d6278485b914d7ee897b93e7f53606dedc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.5/loomloom-linux-arm64.tar.gz"
      sha256 "de449115ff6c20305ee5b5c556b03c7ddbfd75ec88cd4dfda33d242e5307ba66"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.5/loomloom-linux-amd64.tar.gz"
      sha256 "dd0e634acc405472b992f2281463ca055da136e98081ede6e4bb73a918cbcdcd"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

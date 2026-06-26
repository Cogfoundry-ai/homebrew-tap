class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.1/loomloom-darwin-arm64.tar.gz"
      sha256 "d99b61caadb20ac047d588638243c4a350b07d6cc268796549cbf51851cb4af9"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.1/loomloom-darwin-amd64.tar.gz"
      sha256 "f6ad36f25896bfd78d70eaed72905696c25c3d8690d7e8ed5ea688fadf2a8193"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.1/loomloom-linux-arm64.tar.gz"
      sha256 "715b2c0de4a5f606cc986f876bc11f498d96402585dc5361a99b3a1895e1e4c6"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.1/loomloom-linux-amd64.tar.gz"
      sha256 "01e01f20a6f8c2586d9c8aafd7ebdfa95469fc7d6d07b97ef1a1062422aca2e4"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

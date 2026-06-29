class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.2/loomloom-darwin-arm64.tar.gz"
      sha256 "866d627d3002d211c46d3401def45a24892a92c20ed95bdb3b78d9b598509b73"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.2/loomloom-darwin-amd64.tar.gz"
      sha256 "288f1a006d2e769d088489818d721b06ca727c0aee5d41b66c8c8a27fc5a7389"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.2/loomloom-linux-arm64.tar.gz"
      sha256 "9d815598944e956546bf156dee90e6707970fe664276c82a84483ab950d83aa3"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.2/loomloom-linux-amd64.tar.gz"
      sha256 "2b714cbc84cd0608e778c894e3aa25e2491f74a7eed1bc52ab13ab16453a36d3"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

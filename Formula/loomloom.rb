class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.10/loomloom-darwin-arm64.tar.gz"
      sha256 "1192ef39653ff00f76b1eb9c2c1299637165bd79e011d2468370fb6fda14f9f1"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.10/loomloom-darwin-amd64.tar.gz"
      sha256 "750e1ff6dccd24deccbf874b86c9eebf91cd7ba378028e2915788bf4dc7e394a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.10/loomloom-linux-arm64.tar.gz"
      sha256 "171ab714795eb8ac010c33a4f08a81cb970a4dd37baa6df8a44c757f1462de6f"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.10/loomloom-linux-amd64.tar.gz"
      sha256 "e7a7f6b57c360bf005a5cd9d564e9e43ad80b6fec5ac52be46d58edfdd373325"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.8/loomloom-darwin-arm64.tar.gz"
      sha256 "1c0685da42a17fb48f769ba8ecef50d59176a6b0102b76f0cb5341daeeb8fb92"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.8/loomloom-darwin-amd64.tar.gz"
      sha256 "2ce813105cfd841d8349f96fa5346f35d56cfb79815faef4a3f2ab5b7ec90e8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.8/loomloom-linux-arm64.tar.gz"
      sha256 "8dc2dcc004c3156d6af9cc574fee3e114a8fa593d1a85b744d25913ba68ffe9c"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.8/loomloom-linux-amd64.tar.gz"
      sha256 "11c356f3cb20e2ccfd7423da7656aeac471405b988658343711e5704e6e1136e"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.12/loomloom-darwin-arm64.tar.gz"
      sha256 "044e7488c8ba6f3d36023b9711e5ee61322bbe92f8be761f689d68d58e4ee8f7"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.12/loomloom-darwin-amd64.tar.gz"
      sha256 "dc550c56be207d4bd99bb55a82a71e1eafc7cef461713af209a3cbcd8c565296"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.12/loomloom-linux-arm64.tar.gz"
      sha256 "ef74d88b677d4a094d1d3fb4dc068776955071175e54fc482341184a9dfa31dc"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.12/loomloom-linux-amd64.tar.gz"
      sha256 "cd230fc87149c7886a0ce7f735a53656cdc149646ab90a802e06d7a951e7a65c"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

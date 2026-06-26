class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.0/loomloom-darwin-arm64.tar.gz"
      sha256 "6ff9da919156f01a7c91f12291449444b01e8d001ec910add9b6eadfd18d86b4"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.0/loomloom-darwin-amd64.tar.gz"
      sha256 "b83dd44bc00c944cdfa4b050b5b5a8c8ed61b2e71c7dd8650b386f3560fd3826"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.0/loomloom-linux-arm64.tar.gz"
      sha256 "adff35915f2580af262387769247058d2d505ee848bbbc4ff09726c99c4742b9"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.0/loomloom-linux-amd64.tar.gz"
      sha256 "6309c13e8ce28353c191d5e211f42de7a654d83693a866b6656c18cc6765420b"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

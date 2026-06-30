class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/Cogfoundry-ai/loomloom"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.6/loomloom-darwin-arm64.tar.gz"
      sha256 "77749954157566b5a795458aa6a7c50431752a66f68f88a1a69e091e55a83479"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.6/loomloom-darwin-amd64.tar.gz"
      sha256 "52db94ed2cb09a12b8711ce5f7c77f94f8b57faab8ce61b0a909510a63becdf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.6/loomloom-linux-arm64.tar.gz"
      sha256 "3bb15de310644fa8fea2ffdcb76649085c7c7d3f4a06d46ec8f28503ca33f5cb"
    else
      url "https://github.com/Cogfoundry-ai/loomloom/releases/download/v0.1.6/loomloom-linux-amd64.tar.gz"
      sha256 "3dde1c0ccbc0019de1852b011cda04580877ec1e930d20b154a0255d4b991c2c"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end

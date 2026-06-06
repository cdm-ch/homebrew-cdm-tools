class NexusAuth < Formula
  desc "CDM tool: nexus-auth"
  homepage "https://github.com/cdm-ch"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.2.0/nexus-auth-1.2.0-darwin-intel.tar.gz"
      sha256 "00c71d24ae78fcff3081ae67f8edd74115e8f10c16f15d59edb765bf27995f7f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.2.0/nexus-auth-1.2.0-darwin-arm.tar.gz"
      sha256 "2a3dd5dc41a24ae79dab70ddfbdaef3e2361562c1469155d2486ab55feed42ef"
    end
  end

  def install
    bin.install "nexus-auth"
  end

  test do
    system "#{bin}/nexus-auth", "--version"
  end
end

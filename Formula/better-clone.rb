class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "1.2.3"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.3/better-clone-1.2.3-darwin-intel.tar.gz"
      sha256 "6d821b3dd324a8da6dc39eaf27297ec186beaebda182eed42a93f9e917b0a68c"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.3/better-clone-1.2.3-darwin-arm.tar.gz"
      sha256 "5e2ccc7a4054183f8f47e748bcdb0c53c4b89d7d5b3e082319d3774b7d7de1e5"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end

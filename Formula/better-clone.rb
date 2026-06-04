class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "2.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.1.0/better-clone-2.1.0-darwin-intel.tar.gz"
      sha256 "2d515952a5d3cf45fa683371326f1ae100d949af0aeaa13db0c0c049c709f169"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.1.0/better-clone-2.1.0-darwin-arm.tar.gz"
      sha256 "af498c2336c51b140716a36abc56cbd169e08a34e92a7330a4da752b0583524a"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end

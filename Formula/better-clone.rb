class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.6"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.6/better-clone-1.0.6-darwin-intel.tar.gz"
      sha256 ""
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.6/better-clone-1.0.6-darwin-arm.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end

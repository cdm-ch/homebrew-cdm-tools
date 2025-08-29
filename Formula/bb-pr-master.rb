class BbPrMaster < Formula
  desc "CDM tool: bb-pr-master"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.7"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.7/bb-pr-master-1.0.7-darwin-intel.tar.gz"
      sha256 "27be20f67fc8c0fcedf4878176d9e05d637e783c65b4decd7b84a84eb1210014"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.7/bb-pr-master-1.0.7-darwin-arm.tar.gz"
      sha256 "7887278031a00458b1f181d8459c3a4c68e44144f423349e59c15e19de3004c9"
    end
  end

  def install
    bin.install "bb-pr-master"
  end

  test do
    system "#{bin}/bb-pr-master", "--version"
  end
end

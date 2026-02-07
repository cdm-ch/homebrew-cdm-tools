class BbPrMaster < Formula
  desc "CDM tool: bb-pr-master"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.10"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.10/bb-pr-master-1.0.10-darwin-intel.tar.gz"
      sha256 "b55d50f7e7861f2073e974c1d0d9028c3aee3cfc6983d3bde5f6302d40ac02b5"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.10/bb-pr-master-1.0.10-darwin-arm.tar.gz"
      sha256 "82c9716b2cff35ddd2d2c9cf50b9dddc3b5317639000704f7b3daa59515f3a4b"
    end
  end

  def install
    bin.install "bb-pr-master"
  end

  test do
    system "#{bin}/bb-pr-master", "--version"
  end
end

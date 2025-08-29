class BbPrMaster < Formula
  desc "CDM tool: bb-pr-master"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.8"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.8/bb-pr-master-1.0.8-darwin-intel.tar.gz"
      sha256 "a07e0f35badeee405ba5160c4e783c32eeb9e9866b6fe9800fd28cd37962fe05"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.8/bb-pr-master-1.0.8-darwin-arm.tar.gz"
      sha256 "82ca0fe42e9ad09813e76eb06ea1bfe041229cad5137b4a67ef955b0b7490fde"
    end
  end

  def install
    bin.install "bb-pr-master"
  end

  test do
    system "#{bin}/bb-pr-master", "--version"
  end
end

class BbPrMaster < Formula
  desc "CDM tool: bb-pr-master"
  homepage "https://github.com/cdm-ch"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.1.0/bb-pr-master-1.1.0-darwin-intel.tar.gz"
      sha256 "a19dd42ccaa8230e4202ee9a5b8c640dd57fb30c7af789b812bdf3764bdc2cfa"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.1.0/bb-pr-master-1.1.0-darwin-arm.tar.gz"
      sha256 "24396cb0c9844e99c4f8ccc601a39abd5800f17596165f299cfa4b05f029f259"
    end
  end

  def install
    bin.install "bb-pr-master"
  end

  test do
    system "#{bin}/bb-pr-master", "--version"
  end
end

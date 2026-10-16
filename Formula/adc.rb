class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.33.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.33.1/adc-1.33.1-darwin-intel.tar.gz"
      sha256 "2bf1426f31f9b16d4cdf0973de2b9e4bd18d3c0321fe10e5f6e9f53a8f03e1be"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.33.1/adc-1.33.1-darwin-arm.tar.gz"
      sha256 "131b6049b5e7be11880ea8bedb0f712b6ae020ebb5f18c1812e9ff9ceb132446"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

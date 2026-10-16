class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.32.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.32.0/adc-1.32.0-darwin-intel.tar.gz"
      sha256 "ef69d56e7adf794fc4bb492311fa895fd9e9c81be8699fe9b9d67d3173b79072"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.32.0/adc-1.32.0-darwin-arm.tar.gz"
      sha256 "212d847bef115f2e1393d018aef41f2e5930bc7aaee1eaa8becf47d5ce9349f3"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

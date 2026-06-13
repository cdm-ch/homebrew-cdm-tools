class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.23.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.23.0/adc-1.23.0-darwin-intel.tar.gz"
      sha256 "f4f05cc69f834c5438cfa547eab864898a09378025ebf0f1c1066aada25c41e6"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.23.0/adc-1.23.0-darwin-arm.tar.gz"
      sha256 "8226b01072a850bbceefe3e63e78407204afe535d0a533cb16eb0686e283a1d2"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

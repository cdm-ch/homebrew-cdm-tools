class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.25.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.3/adc-1.25.3-darwin-intel.tar.gz"
      sha256 "81d3069ed2090447894630a977a59a11c29441c0507d420f60e800931f7fa501"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.3/adc-1.25.3-darwin-arm.tar.gz"
      sha256 "39933c2195ff6798fa1b06fd475e8330ad63362fdb71fe83c60cec057118511c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

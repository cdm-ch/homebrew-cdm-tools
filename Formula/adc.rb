class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.30.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.5/adc-1.30.5-darwin-intel.tar.gz"
      sha256 "de2ecebe6943c37a0c8bcc79bea7882ef9654673c80aeb123d86d209375d9ba4"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.5/adc-1.30.5-darwin-arm.tar.gz"
      sha256 "d3fdd8de15c29024194369e7579aaa2ec831fc4c6df1417835a2610bf44e3ff5"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

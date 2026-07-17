class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.28.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.28.0/adc-1.28.0-darwin-intel.tar.gz"
      sha256 "44cea75232ba292224babc669ac046ee780832e87f2a5808ff90c7b49bfa1a6a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.28.0/adc-1.28.0-darwin-arm.tar.gz"
      sha256 "aee668b667a825931074a8c38ac471c1b616d5643ddf89660f11d767346dbeaa"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

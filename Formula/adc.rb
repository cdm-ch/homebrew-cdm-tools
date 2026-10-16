class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.33.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.33.0/adc-1.33.0-darwin-intel.tar.gz"
      sha256 "b99add4f17195fa3e78e473b8e204bf19deaea0316cc3375c9425567723f758d"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.33.0/adc-1.33.0-darwin-arm.tar.gz"
      sha256 "066958753d4e9c86f1f4aea3a950ff2cd2278e1ecd5a81baacc74746de0b78f6"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

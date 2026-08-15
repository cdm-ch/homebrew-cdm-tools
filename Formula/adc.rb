class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.30.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.3/adc-1.30.3-darwin-intel.tar.gz"
      sha256 "d29b0532fb158aa93d2aef0c25ea947ea3111def482bdbd7e8aa8d3c22d38d76"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.3/adc-1.30.3-darwin-arm.tar.gz"
      sha256 "36ec0f5818c734f8f58393cee457d31a8629dbece67a9ce6d8f03e748a19718d"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

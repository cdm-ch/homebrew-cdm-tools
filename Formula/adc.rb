class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.25.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.0/adc-1.25.0-darwin-intel.tar.gz"
      sha256 "6b55dc42284d975badef0130430705b5a8c04d0348b34ec52a2f7efc8c76e253"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.0/adc-1.25.0-darwin-arm.tar.gz"
      sha256 "7060143dad40ff21de3a4feea341fee58521902319e144addd828ad466d436bf"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.30.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.2/adc-1.30.2-darwin-intel.tar.gz"
      sha256 "845b3079fed4293da515a444669f90c8068d4fe2bc533d7a966f32d44c5b38ce"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.2/adc-1.30.2-darwin-arm.tar.gz"
      sha256 "df0aae72d30f8c18a23e1523628c54ea6c0306d407a3e5f5c9c191da6494ffab"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

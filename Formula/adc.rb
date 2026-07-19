class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.30.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.0/adc-1.30.0-darwin-intel.tar.gz"
      sha256 "341361ad72b7079f958752816559a450062ea920f45c7f9598aa7daccf264278"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.0/adc-1.30.0-darwin-arm.tar.gz"
      sha256 "d73d868a6b10cd0fb19331a7df6d5a0e215be40e76e215d29b97ed78c11ac96f"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

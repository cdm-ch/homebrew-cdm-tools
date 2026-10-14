class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.31.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.31.0/adc-1.31.0-darwin-intel.tar.gz"
      sha256 "c937da59d2a46244b5e06470c90248ef7bdd734694a376e191ac25b4320130c9"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.31.0/adc-1.31.0-darwin-arm.tar.gz"
      sha256 "e1ff8aea4e510cfdcf4c4b59252294b8a6a811944297fe4a5ca7d3cfb6779c7c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

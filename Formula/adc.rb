class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.21.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.21.0/adc-1.21.0-darwin-intel.tar.gz"
      sha256 "d145fff11e689073e2ee8e1a9a0ba149672e75b823ac8637f9ee3780d7385144"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.21.0/adc-1.21.0-darwin-arm.tar.gz"
      sha256 "c9ac3c12c2829d3780db77f446c53d7797d54ad2b19ca1a892c94c5eafa46826"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.34.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.34.0/adc-1.34.0-darwin-intel.tar.gz"
      sha256 "65fbc3cc331926d2e7adbc26f4862c24165a876226541854a8681437382f1b9c"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.34.0/adc-1.34.0-darwin-arm.tar.gz"
      sha256 "340b8a2ef1379c5957988d2b96babe27f5851277d61be056e7190c5bafa0a319"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.24.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.24.0/adc-1.24.0-darwin-intel.tar.gz"
      sha256 "0ad7be97b76964f543714c4cf6e203dbd0ebfccd1cb36109184b5cd645658b71"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.24.0/adc-1.24.0-darwin-arm.tar.gz"
      sha256 "8d7c62e1d66b8b15ff9c8bd045b1a0abe6614f33ee104b9bcd77dcd40785e06b"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

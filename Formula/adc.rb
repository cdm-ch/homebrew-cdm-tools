class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.36.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.36.0/adc-1.36.0-darwin-intel.tar.gz"
      sha256 "0e4086823bf073c2a4e41c1f6086a516312f397ed7d5fcce83aaa0ccdca784a6"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.36.0/adc-1.36.0-darwin-arm.tar.gz"
      sha256 "6ab61f50a3f4c8889a88ba4a3684504aa2efc160d67e312ea7a56c5e30e786d5"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

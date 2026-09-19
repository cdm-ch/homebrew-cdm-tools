class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.30.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.4/adc-1.30.4-darwin-intel.tar.gz"
      sha256 "2b1e3a2efe8e279878d9c4620a41ebfc448438a49a786117bbeb272efa039741"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.4/adc-1.30.4-darwin-arm.tar.gz"
      sha256 "b5d885391a1e41222782b735006fcbea1f073c057c3f05c4b72f064b79c98a46"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.27.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.27.0/adc-1.27.0-darwin-intel.tar.gz"
      sha256 "305fde12b4c14ef4025d4014a8e2d013abe4034f1db8f7ce685ccb944c83a58c"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.27.0/adc-1.27.0-darwin-arm.tar.gz"
      sha256 "379eb982bfc63f6d8f7b0259469a5bce7f01c3b12325cd48472d6c838e8e12f6"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

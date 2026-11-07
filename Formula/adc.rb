class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.36.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.36.1/adc-1.36.1-darwin-intel.tar.gz"
      sha256 "025373e3bec70b13a32c42b7b350d68d0bf29284eed6fbad43e39e0674443732"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.36.1/adc-1.36.1-darwin-arm.tar.gz"
      sha256 "f0f45228bd4be1340f75d74e00567d5f1fcb9490379afb74332d5387fe340749"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

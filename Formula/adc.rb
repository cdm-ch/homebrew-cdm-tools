class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.29.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.29.0/adc-1.29.0-darwin-intel.tar.gz"
      sha256 "f66610efbb127d434c522c6302e214cb0cfe8749006fa6ef36297e8a65cf33b7"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.29.0/adc-1.29.0-darwin-arm.tar.gz"
      sha256 "5989a3746784f4d17dfc114f36e8c7c8b6df12cef9ca75531be5e219aae6e744"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

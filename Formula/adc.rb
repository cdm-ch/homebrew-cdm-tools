class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.25.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.1/adc-1.25.1-darwin-intel.tar.gz"
      sha256 "98a1c0f267cc2bb4d56c1c08394cb92fba686a74fbc3a0493a7eec7e91d802d6"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.1/adc-1.25.1-darwin-arm.tar.gz"
      sha256 "988caa8fbb82b52c75e1d55248c110708b436b980d575a3d3f52ed6720c086e6"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.25.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.2/adc-1.25.2-darwin-intel.tar.gz"
      sha256 "e95a6937d30488829033e85cc21e89bcbd69adcc738729d85c9a9b5af4e29194"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.25.2/adc-1.25.2-darwin-arm.tar.gz"
      sha256 "c8401b77c46ad5b4aeb2f92fe76454e0aaca8bd0bd6094a96ca4c1f3b6292d2a"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

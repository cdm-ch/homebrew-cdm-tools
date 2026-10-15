class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.31.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.31.1/adc-1.31.1-darwin-intel.tar.gz"
      sha256 "30dc83e96a60e382b9d1de9942e4c69674c4ffdb739865991c5a6447ba17d8a0"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.31.1/adc-1.31.1-darwin-arm.tar.gz"
      sha256 "3ff8d541155a9430655ff5fd32a1043739b244f71a656b780b72511f9ffba218"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

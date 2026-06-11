class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.22.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.22.0/adc-1.22.0-darwin-intel.tar.gz"
      sha256 "2873ac8acc6b1ce66d67209c5c6f86dcda6bbc1e3305da33f797fe64be045efb"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.22.0/adc-1.22.0-darwin-arm.tar.gz"
      sha256 "581ae9eb695fbd25be306a23975ef75c1ed13cdc1f645f2b7acbf26ebd9d87dd"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

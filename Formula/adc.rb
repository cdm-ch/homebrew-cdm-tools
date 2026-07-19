class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.30.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.1/adc-1.30.1-darwin-intel.tar.gz"
      sha256 "2ff4deb37f9bfd7193b84507b66f03c91b5f2b6fc9c67bd9c8990076c5c2b945"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.30.1/adc-1.30.1-darwin-arm.tar.gz"
      sha256 "5e823e7e19574588f3c3e1de55a70d89cdf81829727d137ac8530d970e1f0f79"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

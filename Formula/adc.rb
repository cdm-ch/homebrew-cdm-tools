class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.8.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.8.2/adc-1.8.2-darwin-intel.tar.gz"
      sha256 "a502d3760ffbc05410df0dd64cca1ac20928d2e5c1df84e2e11a73c2fc181773"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.8.2/adc-1.8.2-darwin-arm.tar.gz"
      sha256 "d32476961a65153b746745b88ddabc2c3ef8b1733e7574b12e5d64cb8bafc4e6"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

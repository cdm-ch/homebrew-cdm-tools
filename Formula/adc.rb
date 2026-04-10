class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.8.1/adc-1.8.1-darwin-intel.tar.gz"
      sha256 "221c9e3726e5938ec11ea70e74573e0c8fccaec23cf64191a9c2410dbce64723"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.8.1/adc-1.8.1-darwin-arm.tar.gz"
      sha256 "49e398147ab921139a4d1a37ba0ac0958c1817ee9ac2b4ea8bb187f387dd2489"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

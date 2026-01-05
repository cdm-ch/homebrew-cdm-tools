class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.1.1/adc-1.1.1-darwin-intel.tar.gz"
      sha256 "8d7cd5dcfa7a647201838d7d5408db1cc4be8135c679e68ce5eabac5d6fa82fa"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.1.1/adc-1.1.1-darwin-arm.tar.gz"
      sha256 "a1ef0eefc1d88a7ec199190077fb2cd6b5ceb521f1033a28ca72580342a10880"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.8/adc-1.4.8-darwin-intel.tar.gz"
      sha256 "0846ff826c38de8bcb15c4b3e3d2c2ccb6ef6984ea0b540213a7aff1a3794a5d"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.8/adc-1.4.8-darwin-arm.tar.gz"
      sha256 "b935ab3a6cfa93dc903f7272531949ac2103a1ad1ec9cf34f670d902c03fec24"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

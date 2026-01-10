class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.7/adc-1.3.7-darwin-intel.tar.gz"
      sha256 "79295e4f964cee5e2a1e10b11e81e43011588c8611ceca00b709652fc749fab1"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.7/adc-1.3.7-darwin-arm.tar.gz"
      sha256 "c4e53a8671ea7f3bf4cf4c04e626e7202d155eda5a6c24839752ccb13f80e3f0"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

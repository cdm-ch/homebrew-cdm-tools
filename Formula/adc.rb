class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.1.0/adc-1.1.0-darwin-intel.tar.gz"
      sha256 "377d168ca565804de08d3b89e5a0bcaeaaae0649514124750542d7b33f7d4d97"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.1.0/adc-1.1.0-darwin-arm.tar.gz"
      sha256 "eb7bc4d7c4234c4b59db61ca0a0ec5d05f7225b8daa9e2eb331a86f70088d771"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

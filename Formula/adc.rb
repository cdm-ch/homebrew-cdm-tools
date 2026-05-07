class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.12.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.2/adc-1.12.2-darwin-intel.tar.gz"
      sha256 "862e100398d467353de5b306ba3c4b2f046a823e067657381424f497113a0bfa"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.2/adc-1.12.2-darwin-arm.tar.gz"
      sha256 "3b16267e2eb5df77bc70cfe381499bb0a03c669ed50932e49bd7efdbd7d3821f"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

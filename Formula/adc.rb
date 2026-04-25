class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.0/adc-1.11.0-darwin-intel.tar.gz"
      sha256 "0f11b155574256f51584b3cfb586afc2a11af50d2c34e9dcf21707a06f5f8910"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.0/adc-1.11.0-darwin-arm.tar.gz"
      sha256 "6f36295837e83efbe7d1c10dd254efef2e1dee4228b1dbf83f7594e54c7a5d57"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

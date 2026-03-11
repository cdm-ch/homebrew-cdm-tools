class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.0/adc-1.5.0-darwin-intel.tar.gz"
      sha256 "23b99503c3f8fedd4d3b7daffa3e7efb122a1190f392d39e5d3674832842d91d"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.0/adc-1.5.0-darwin-arm.tar.gz"
      sha256 "37131a0082749b2c3c140c71cbe828f531a65e21046c9f5f80077c56c7e82abd"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

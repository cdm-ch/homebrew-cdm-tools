class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.10.0/adc-1.10.0-darwin-intel.tar.gz"
      sha256 "015d9aa458bee090db14d98ed9968b364eeeeda99d51f57fb6a47bd0da591ad8"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.10.0/adc-1.10.0-darwin-arm.tar.gz"
      sha256 "bfe91f743c17d8b2a7e02d756df4bd3d1f448246f5a02d35a5f787acd4e993a6"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

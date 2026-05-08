class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.14.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.14.0/adc-1.14.0-darwin-intel.tar.gz"
      sha256 "a06b6ef433b1bd14bcea951f2b6fc53381f06689fc4be7682518c598a275c143"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.14.0/adc-1.14.0-darwin-arm.tar.gz"
      sha256 "7ac491493e4ecf434735edd78da521d3025db5ea4d0c430132ce486c2dcbb9d6"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.15.0/adc-1.15.0-darwin-intel.tar.gz"
      sha256 "ab1cd505f6ab027069346defe57ef1708fd44196dee4a59fbe56b621df8744a9"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.15.0/adc-1.15.0-darwin-arm.tar.gz"
      sha256 "17210b0ce92616e137e7f05403702b9bc42bbf42a20a7eff5dafb6609ef402b1"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

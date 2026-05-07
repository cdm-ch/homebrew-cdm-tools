class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.0/adc-1.12.0-darwin-intel.tar.gz"
      sha256 "87f6c8c644ea1819a81207dc5957208d3fe1057a348f76a04a3a3afb5336b06b"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.0/adc-1.12.0-darwin-arm.tar.gz"
      sha256 "3829fcf9fc39746160fa20fa06fd8bdc09ea6dedc482ca0a82bd5c7b3f8b3abf"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

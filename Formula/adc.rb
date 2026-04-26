class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.11.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.2/adc-1.11.2-darwin-intel.tar.gz"
      sha256 "c6d9f5da197a723ace8714a8fd8da76623f66ce4dfcce8de1ed292ab6c3f49e0"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.2/adc-1.11.2-darwin-arm.tar.gz"
      sha256 "91675b6e9d7e0315f88f7bba484b3ad6ebc740416f36fb03785e2c55152ad8f1"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

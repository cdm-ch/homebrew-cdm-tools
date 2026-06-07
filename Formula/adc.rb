class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.20.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.20.0/adc-1.20.0-darwin-intel.tar.gz"
      sha256 "cf96517fbd6f6a50b877ff3a86a6506ff19a882e2f216881547959d58cc8353b"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.20.0/adc-1.20.0-darwin-arm.tar.gz"
      sha256 "eecf9cb5cdbb604e172f9196b79e67eaa305cfbb42c4310c29211d86ebd95b2f"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

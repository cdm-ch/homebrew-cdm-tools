class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.12.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.1/adc-1.12.1-darwin-intel.tar.gz"
      sha256 "951d9c6d08e5d7d4abdcdabdab977fee3487f44522433477fbf90871c10b1196"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.1/adc-1.12.1-darwin-arm.tar.gz"
      sha256 "513e53351385e98dc4d7eaf9e60bcb5ea76755ebd53a19de4310c6e4b61de496"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.5/adc-1.3.5-darwin-intel.tar.gz"
      sha256 "e331226c709238e1f8ef1a60596fe89e70a53e5f4448f9a2fa828790b11bd04a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.5/adc-1.3.5-darwin-arm.tar.gz"
      sha256 "230e07799dab1e4a2050a6dad231761986377120f7ac5c3aa27ce98d22d8354c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end

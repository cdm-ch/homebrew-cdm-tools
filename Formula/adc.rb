class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.0/adc-1.3.0-darwin-intel.tar.gz"
      sha256 "fd53e784a6245f142b0e33a4bbe059d404fd48fe4f954f5f08767e8f9aa44e30"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.0/adc-1.3.0-darwin-arm.tar.gz"
      sha256 "2e871a461ec4b029ba382f9ee49be37644ba0c01cdd9be0038c76fe43354da26"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
